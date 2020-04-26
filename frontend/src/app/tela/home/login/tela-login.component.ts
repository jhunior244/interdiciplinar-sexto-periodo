import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { AuthService } from 'src/app/core/auth/auth.service';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Usuario } from 'src/app/core/usuario/usuario';
import { Md5 } from 'ts-md5/dist/md5';
import {MatSnackBar, MatSnackBarConfig} from '@angular/material/snack-bar';

@Component({
  templateUrl: './tela-login.component.html',
  styleUrls: ['./tela-login.component.css']
})
export class TelaLoginComponent implements OnInit {

  public formGroup: FormGroup;
  public rotasSistema = configuracao;

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private sessaoService: SessaoService,
    private router: Router,
    private snackBar: MatSnackBar
  ) {
    this.formGroup = this.formBuilder.group({
      email: [null, Validators.compose([Validators.required, Validators.email])],
      senha: [null, Validators.required]
    });

    
  }

  get email(): AbstractControl { return this.formGroup.controls.email; }
  get senha(): AbstractControl { return this.formGroup.controls.senha; }

  ngOnInit(): void {
    this.sessaoService.deslogar();
  }

  logar() {
    const usuario = new Usuario();
    usuario.email = this.email.value;
    usuario.senha = Md5.hashStr(this.senha.value).toString();
    this.authService.autenticar(usuario).subscribe(resposta => {
      this.router.navigate([configuracao.rotaInicio]);

    }, (erro: HttpErrorResponse) => {
      console.log(erro);
      const config = new MatSnackBarConfig();
      config.panelClass = 'mensagem-erro';
      config.duration = 3000;
      this.snackBar.open('Email ou senha estão incorretos', 'Fechar', config);
    });
  }

  redirecionaTelaCadastro(){
    this.router.navigate([configuracao.rotaCadastra]);
  }
}

