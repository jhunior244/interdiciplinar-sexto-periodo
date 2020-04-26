import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, AbstractControl } from '@angular/forms';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import {
    senhasNaoCoindemValidator, SenhasIguaisCrosFieldValidator,
    EmailCrossFieldErrorMatcher, emailExisteNaBaseValidator
} from './tela-cadastro.validators';
import { UsuarioService } from 'src/app/core/usuario/usuario.service';
import { Usuario } from 'src/app/core/usuario/usuario';
import {Md5} from 'ts-md5/dist/md5';
import { HttpErrorResponse } from '@angular/common/http';
import { AuthService } from 'src/app/core/auth/auth.service';
import { Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { MatSnackBarConfig, MatSnackBar } from '@angular/material';

@Component({
    selector: 'app-tela-cadastro',
    templateUrl: './tela-cadastro.component.html',
    styleUrls: ['./tela-cadastro.component.css']
})
export class TelaCadastroComponent implements OnInit {

    public formGroup: FormGroup;
    public exibeErroSenhasNaoCoincidem = new SenhasIguaisCrosFieldValidator();
    public exibeErroEmailValidator = new EmailCrossFieldErrorMatcher();
    public usuario = new Usuario();
    

    constructor(
        private formBuilder: FormBuilder,
        private sessaoService: SessaoService,
        private usuarioService: UsuarioService,
        private authService: AuthService,
        private router: Router,
        private snackBar: MatSnackBar
    ) {
        this.formGroup = this.formBuilder.group({
            nome: [null, Validators.required],
            email: [null, Validators.compose([Validators.required, Validators.email])],
            senha: [null, Validators.compose([Validators.required, Validators.minLength(6), Validators.maxLength(16)])],
            repetirSenha: [null, Validators.compose([Validators.required, Validators.minLength(6), Validators.maxLength(16)])],
        }, {
            validators: [
                senhasNaoCoindemValidator
            ],
            asyncValidators: [
                emailExisteNaBaseValidator(usuarioService)
            ]
        });
    }

    get nome(): AbstractControl { return this.formGroup.controls.nome; }
    get email(): AbstractControl { return this.formGroup.controls.email; }
    get senha(): AbstractControl { return this.formGroup.controls.senha; }
    get repetirSenha(): AbstractControl { return this.formGroup.controls.repetirSenha; }

    ngOnInit(): void {
        this.sessaoService.deslogar();
    }

    formularioParaEntidade(){
        this.usuario.nome = this.nome.value;
        this.usuario.email = this.email.value;
        this.usuario.senha = Md5.hashStr(this.senha.value).toString();
    }

    cadastrar() {
        this.formularioParaEntidade();
        this.usuarioService.cria(this.usuario).subscribe(() => {
            this.authService.autenticar(this.usuario).subscribe(retorno => {
                const config = new MatSnackBarConfig();
                config.panelClass = 'mensagem-sucesso';
                config.duration = 3000;
                this.snackBar.open('Cadastro efetuado com sucesso.', 'Fechar', config);
                this.router.navigate([configuracao.rotaInicio]);
            }, (erro: HttpErrorResponse) => {
                console.log(erro);
            });
        }, (erro: HttpErrorResponse) => {
            console.log(erro);
        });
    }
}

