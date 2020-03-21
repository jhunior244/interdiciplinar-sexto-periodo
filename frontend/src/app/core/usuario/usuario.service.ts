import { Injectable } from '@angular/core';
import { Subject, BehaviorSubject } from 'rxjs';
import { Usuario } from './usuario';
import { TokenService } from '../token/token.service';
import * as jtw_decode from 'jwt-decode';

@Injectable({ providedIn: 'root' })
export class UsuarioService {

    private usuarioSubject = new BehaviorSubject<Usuario>(null);


    constructor(
        private tokenService: TokenService
    ) {
        this.tokenService.hasToken() &&
            this.decodeAndNotify();
    }

    setToken(token: string) {
        this.tokenService.setToken(token);
    }

    getUsuario() {
        return this.usuarioSubject.asObservable();
    }

    private decodeAndNotify() {
        const token = this.tokenService.getToken();

        const usuario = jtw_decode(token) as Usuario;

        this.usuarioSubject.next(usuario);
    }

}