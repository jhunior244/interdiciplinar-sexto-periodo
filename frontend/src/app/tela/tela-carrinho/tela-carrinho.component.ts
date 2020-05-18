import { Component, OnInit } from "@angular/core";
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatSnackBar } from '@angular/material';
import { ActivatedRoute, Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Carrinho } from 'src/app/servico/carrinho/carrinho';
import { Kit } from 'src/app/servico/kit/kit';
import { KitService } from 'src/app/servico/kit/kit.service';

@Component({
    selector: 'app-tela-carrinho',
    templateUrl: './tela-carrinho.component.html',
    styleUrls: ['./tela-carrinho.component.css']
})
export class TelaCarrinhoComponent implements OnInit {
    displayedColumns: string[] = ['kit', 'titulo'];
    public formGroup: FormGroup;
    public rotasSistema = configuracao;
    id: number;
    public kit: Kit;
    public caminhoImagemFull = '';
    public carrinho: Carrinho;
    constructor(
        private formBuilder: FormBuilder,
        private sessaoService: SessaoService,
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
            console.log(carrinho);
        });
    }

    get logradouro(): AbstractControl { return this.formGroup.controls.logradouro; }
    get numero(): AbstractControl { return this.formGroup.controls.numero; }
    get bairro(): AbstractControl { return this.formGroup.controls.bairro; }
    get cep(): AbstractControl { return this.formGroup.controls.cep; }
    get numeroCartao(): AbstractControl { return this.formGroup.controls.numeroCartao; }
    get codigoSeguranca(): AbstractControl { return this.formGroup.controls.codigoSeguranca; }

    ngOnInit(): void {
    }
}

