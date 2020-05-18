import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { configuracao } from 'src/app/configuracao';
import { Carrinho } from './carrinho';

@Injectable()
export class CarrinhoService {
    url = 'http://localhost:8080' + '/carrinho';
    httpHeader = new HttpHeaders();
    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }


    public obtem(token: string): Observable<Carrinho> {

        let httpParams = new HttpParams();

        if (token) {
            httpParams = httpParams.append(configuracao.parametroToken, token);
        }

        return this.httpCliente.get<Carrinho>(this.url + '/obtem', { params: httpParams })
            .pipe(map((carrinho => Carrinho.doBackend(carrinho))));
    }

    
    public adicionaKitCarrinho(idKit: number, idCarrinho: number): Observable<Carrinho>{

        let httpParams = new HttpParams();

        if (idKit) {
            httpParams = httpParams.append('idKit', idKit.toString());
        }
        if (idCarrinho) {
            httpParams = httpParams.append('idCarrinho', idCarrinho.toString());
        }

        return this.httpCliente.get<Carrinho>(this.url + '/adicionaKitCarrinho', { params: httpParams })
            .pipe(map((carrinho => Carrinho.doBackend(carrinho))));
    }
}