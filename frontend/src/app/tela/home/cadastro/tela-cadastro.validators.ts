import { ErrorStateMatcher } from '@angular/material';
import { FormControl, FormGroupDirective, NgForm, ValidatorFn, FormGroup, ValidationErrors, AsyncValidatorFn } from '@angular/forms';
import { UsuarioService } from 'src/app/core/usuario/usuario.service';
import { Observable, of } from 'rxjs';
import { map } from 'rxjs/operators';

export class SenhasIguaisCrosFieldValidator implements ErrorStateMatcher {
    isErrorState(controle: FormControl | null, formulario: FormGroupDirective | NgForm | null): boolean {
        return controle.touched && ((controle.invalid || formulario.hasError('senhasNaoCoincidem')));
    }
}

export class EmailCrossFieldErrorMatcher implements ErrorStateMatcher {
    isErrorState(controle: FormControl | null, formulario: FormGroupDirective | NgForm | null): boolean {
        return controle.touched
            && (controle.hasError('email') || controle.hasError('required') ||
                formulario.hasError('emailJaExisteNaBase'));
    }
}

export const senhasNaoCoindemValidator: ValidatorFn = (formulario: FormGroup): ValidationErrors | null => {
    const senha = formulario.controls.senha.value;
    const repetirSenha = formulario.controls.repetirSenha.value;
    return formulario.controls.senha.touched && formulario.controls.repetirSenha.touched && senha !== repetirSenha ?
        { senhasNaoCoincidem: true } : null;
};

export function emailExisteNaBaseValidator(usuarioService: UsuarioService): AsyncValidatorFn {
    return (formulario: FormGroup): Observable<ValidationErrors | null> => {

        const email = formulario.controls.email.value ? formulario.controls.email.value : null;

        if (email == null) {
            return of(null);
        }

        return usuarioService.existeUsuarioCadastradoComEmail(email)
        .pipe(map(existe => existe ? { emailJaExisteNaBase : true } : null));

    };
}

