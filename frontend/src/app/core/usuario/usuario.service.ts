import { Injectable } from '@angular/core';
import { Subject, BehaviorSubject, Observable } from 'rxjs';
import { Usuario } from './usuario';
import { TokenService } from '../token/token.service';
import * as jtw_decode from 'jwt-decode';
import { HttpHeaders, HttpClient, HttpParams } from '@angular/common/http';
import { configuracao } from 'src/app/configuracao';
import { map } from 'rxjs/operators';
import { Kit } from 'src/app/servico/kit/kit';

const usuarioLogadoSistema = 'usuarioLogadoSistema';

@Injectable({ providedIn: 'root' })
export class UsuarioService {

    private usuarioSubject = new BehaviorSubject<Usuario>(null);
    url = 'http://localhost:8080' + '/usuario';
    httpHeader = new HttpHeaders();

    constructor(
        private tokenService: TokenService,
        private httpCliente: HttpClient
    ) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');

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

    estaLogado(): boolean {
        return this.getNomeUsuarioLogado() != null ? true : false;
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

    public cria(usuario: Usuario): Observable<Usuario> {
        return this.httpCliente.post<Usuario>(this.url + '/cria', usuario.paraBackend(), { headers: this.httpHeader })
            .pipe(map(usuarioCriado => Usuario.doBackend(usuarioCriado) as Usuario));

    }

    public existeUsuarioCadastradoComEmail(email: string): Observable<boolean> {

        let httpParams = new HttpParams();

        if (email) {
            httpParams = httpParams.append(configuracao.parametroEmail, email.toString());
        }

        return this.httpCliente.get<boolean>(this.url + '/existeUsuarioCadastradoComEmail', { params: httpParams });
    }

}

