import { Component } from '@angular/core';
import { AbstractControl, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { AuthService } from 'src/app/core/auth/auth.service';
import { HttpErrorResponse } from '@angular/common/http';

@Component({
  templateUrl: './tela-login.component.html',
  styleUrls: ['./tela-login.component.css']
})
export class TelaLoginComponent {

  public formGroup: FormGroup;

  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService
  ) {
    this.formGroup = this.formBuilder.group({
      email: [null, Validators.compose([Validators.required, Validators.email])],
      senha: [null, Validators.required]
    });
  }

  get email(): AbstractControl { return this.formGroup.controls.email; }
  get senha(): AbstractControl { return this.formGroup.controls.senha; }

  logar() {
    this.authService.autenticar(this.email.value, this.senha.value).subscribe(resposta => {
      console.log(resposta);
    }, (erro: HttpErrorResponse) => {
      console.log(erro);
    });
  }
}

