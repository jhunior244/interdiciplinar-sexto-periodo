import { Component, OnInit } from "@angular/core";
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar } from '@angular/material';
import { ActivatedRoute, Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Carrinho } from 'src/app/servico/carrinho/carrinho';
import { Kit } from 'src/app/servico/kit/kit';
import { KitService } from 'src/app/servico/kit/kit.service';
import { ItemCarrinho } from 'src/app/servico/item-carrinho/item-carrinho';
import { CarrinhoService } from 'src/app/servico/carrinho/carrinho.service';
import { UsuarioService } from 'src/app/core/usuario/usuario.service';

@Component({
    selector: 'app-tela-carrinho',
    templateUrl: './tela-carrinho.component.html',
    styleUrls: ['./tela-carrinho.component.css']
})
export class TelaCarrinhoComponent implements OnInit {
    public formGroup: FormGroup;
    id: number;
    public kit: Kit;
    public carrinho: Carrinho;
    public totalCompra: number;

    constructor(
        private formBuilder: FormBuilder,
        private sessaoService: SessaoService,
        private carrinhoService: CarrinhoService,
        private usuarioService: UsuarioService,
        private router: Router
    ) {
        this.formGroup = this.formBuilder.group({
            logradouro: [null, Validators.compose([Validators.required])],
            numero: [null, Validators.required],
            bairro: [null, Validators.required],
            cep: [null, Validators.required],
            numeroCartao: [null, Validators.required],
            codigoSeguranca: [null, Validators.required],
        });

        this.sessaoService.getCarrinho().subscribe(carrinho => {
            this.carrinho = carrinho;
            this.calculaTotalCompra(carrinho);
        });
    }

    ngOnInit(): void {
    }

    incrementaQuantidadeItem(item: ItemCarrinho) {
        if (item.quantidade < item.kit.quantidadeEstoque) {
            this.carrinhoService.incrementaQuantidadeItem(item.id.toString()).subscribe(carrinho => {
                this.usuarioService.setCarrinho(carrinho);
            });
        }
    }

    decrementaQuantidadeItem(item: ItemCarrinho) {
        if (item.quantidade > 1) {
            this.carrinhoService.decrementaQuantidadeItem(item.id.toString()).subscribe(carrinho => {
                this.usuarioService.setCarrinho(carrinho);
            });
        }
    }

    calculaTotalCompra(carrinho: Carrinho) {
        this.totalCompra = 0;
        if (carrinho == null || carrinho.listaItemCarrinho == null) {
            return;
        }

        carrinho.listaItemCarrinho.forEach((item: ItemCarrinho) => {
            this.totalCompra += item.quantidade * item.kit.preco;
        });
    }

    retiraItemCarrinho(item) {
        this.carrinhoService.retiraItemCarrinho(item.id.toString()).subscribe(carrinho => {
            this.usuarioService.setCarrinho(carrinho);
        });
    }

    efetuarCompra() {
        this.router.navigate([configuracao.rotaComprar]);
    }
}

