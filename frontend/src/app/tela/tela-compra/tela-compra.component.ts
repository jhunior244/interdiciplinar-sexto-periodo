import { Component } from '@angular/core';
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { UsuarioService } from 'src/app/core/usuario/usuario.service';
import { Carrinho } from 'src/app/servico/carrinho/carrinho';
import { CarrinhoService } from 'src/app/servico/carrinho/carrinho.service';
import { ItemCarrinho } from 'src/app/servico/item-carrinho/item-carrinho';

@Component({
    selector: 'app-tela-compra',
    templateUrl: './tela-compra.component.html',
    styleUrls: ['./tela-compra.component.css']
})
export class TelaCompraComponent {
    public formGroup: FormGroup;
    public carrinho: Carrinho;
    public totalCompra: number;

    constructor(
        private formBuilder: FormBuilder,
        private sessaoService: SessaoService,
        private carrinhoService: CarrinhoService,
        private usuarioService: UsuarioService
    ) {
        this.formGroup = this.formBuilder.group({
            logradouro: [null, Validators.compose([Validators.required])],
            numero: [null, Validators.required],
            bairro: [null, Validators.required],
            cidade: [null, Validators.required],
            cep: [null, Validators.required],
            numeroCartao: [null, Validators.required],
            codigoSeguranca: [null, Validators.required],
        });

        this.sessaoService.getCarrinho().subscribe(carrinho => {
            this.carrinho = carrinho;
            this.calculaTotalCompra(carrinho);
        });
    }

    get logradouro(): AbstractControl { return this.formGroup.controls.logradouro; }
    get numero(): AbstractControl { return this.formGroup.controls.numero; }
    get bairro(): AbstractControl { return this.formGroup.controls.bairro; }
    get cidade(): AbstractControl { return this.formGroup.controls.cidade; }
    get cep(): AbstractControl { return this.formGroup.controls.cep; }
    get numeroCartao(): AbstractControl { return this.formGroup.controls.numeroCartao; }
    get codigoSeguranca(): AbstractControl { return this.formGroup.controls.codigoSeguranca; }

    calculaTotalCompra(carrinho: Carrinho) {
        this.totalCompra = 0;
        if (carrinho == null || carrinho.listaItemCarrinho == null) {
            return;
        }

        carrinho.listaItemCarrinho.forEach((item: ItemCarrinho) => {
            this.totalCompra += item.quantidade * item.kit.preco;
        });
    }

    comprar() {

    }

}