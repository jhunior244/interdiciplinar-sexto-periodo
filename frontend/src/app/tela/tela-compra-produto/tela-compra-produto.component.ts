import { Component, OnInit } from "@angular/core";
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { configuracao } from 'src/app/configuracao';
import { AuthService } from 'src/app/core/auth/auth.service';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Router, ActivatedRoute } from '@angular/router';
import { MatSnackBar } from '@angular/material';
import { HttpErrorResponse } from '@angular/common/http';
import { KitService } from 'src/app/servico/kit/kit.service';
import { Kit } from 'src/app/servico/kit/kit';

@Component({
    selector: 'app-tela-compra-produto',
    templateUrl: './tela-compra-produto.component.html',
    styleUrls: ['./tela-compra-produto.component.css']
})
export class TelaCompraComponent implements OnInit {

    public formGroup: FormGroup;
    public rotasSistema = configuracao;
    id: number;
    public kit: Kit;
    public caminhoImagemFull = '';

    constructor(
        private activatedRoute: ActivatedRoute,
        private kitService: KitService,
        private formBuilder: FormBuilder,
        private sessaoService: SessaoService,
        private router: Router,
        private snackBar: MatSnackBar
    ) {
        this.formGroup = this.formBuilder.group({
            logradouro: [null, Validators.compose([Validators.required])],
            numero: [null, Validators.required],
            bairro: [null, Validators.required],
            cep: [null, Validators.required],
            numeroCartao: [null, Validators.required],
            codigoSeguranca: [null, Validators.required],
        });

        this.activatedRoute.params.subscribe(params => {
            this.id = params[configuracao.parametroId];
            if (this.id != null) {
                this.kitService.obtem(this.id).subscribe(kit => {
                    this.kit = kit;
                    if (this.kit && this.kit.listaImagem && this.kit.listaImagem[0]) {
                        this.caminhoImagemFull = this.kit.listaImagem[0].caminho;
                    }
                }, (erro: HttpErrorResponse) => {
                    console.log(erro);
                });
            }
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

