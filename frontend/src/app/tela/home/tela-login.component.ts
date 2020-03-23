import { Component, OnInit } from '@angular/core';
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { AuthService } from 'src/app/core/auth/auth.service';
import { HttpErrorResponse } from '@angular/common/http';
import { Usuario } from 'src/app/core/usuario/usuario';
import { ItemService } from 'src/app/servico/item/item.service';
import { Item } from 'src/app/servico/item/item';
import { UsuarioService } from 'src/app/core/usuario/usuario.service';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';

@Component({
  templateUrl: './tela-login.component.html',
  styleUrls: ['./tela-login.component.css']
})
export class TelaLoginComponent implements OnInit {

  public formGroup: FormGroup;

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private sessaoService: SessaoService,
    private router: Router
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
    usuario.senha = this.senha.value;
    this.authService.autenticar(usuario).subscribe(resposta => {
      this.router.navigate([configuracao.rotaInicio]);
    }, (erro: HttpErrorResponse) => {
      console.log(erro);
    });
  }
}

