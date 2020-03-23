import { Injectable } from '@angular/core';
import { Subject, BehaviorSubject } from 'rxjs';
import { Usuario } from './usuario';
import { TokenService } from '../token/token.service';
import * as jtw_decode from 'jwt-decode';

const usuarioLogadoSistema = 'usuarioLogadoSistema';

@Injectable({ providedIn: 'root' })
export class UsuarioService {

    private usuarioSubject = new BehaviorSubject<Usuario>(null);


    constructor(
        private tokenService: TokenService
    ) {
        this.tokenService.hasToken() && this.decodeAndNotify();
    }

    setToken(token: string) {
        this.tokenService.setToken(token);
    }

    setUsuarioLogadoSistema(nome: string) {
        window.localStorage.setItem(usuarioLogadoSistema, nome);
        this.decodeAndNotify();
    }

    private getNomeUsuarioLogado() {
        return window.localStorage.getItem(usuarioLogadoSistema);
    }

    getUsuario() {
        this.decodeAndNotify();
        return this.usuarioSubject.asObservable();
    }

    removeNomeUsuarioLogado() {
        window.localStorage.removeItem(usuarioLogadoSistema);
        this.decodeAndNotify();
    }

    private decodeAndNotify() {
        const usuario = new Usuario();
        if (this.getNomeUsuarioLogado()) {
            usuario.nome = this.getNomeUsuarioLogado();
            this.usuarioSubject.next(usuario);
        } else {
            this.usuarioSubject.next(null);
        }
    }

}

