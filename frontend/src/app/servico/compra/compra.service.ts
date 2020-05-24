import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { configuracao } from 'src/app/configuracao';
import { Compra } from './compra';

@Injectable()
export class CompraService {
    url = 'http://localhost:8080' + '/compra';
    httpHeader = new HttpHeaders();
    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }


    public efetuarCompra(
        idCarrinho: number,
        logradouro: string,
        numero: number,
        bairro: string,
        cep: string,
        cidade: string,
        numeroCartao: string,
        codigoSeguranca: string,
        idEstado: number
    ): Observable<Compra> {

        let httpParams = new HttpParams();

        if (idCarrinho) {
            httpParams = httpParams.append('idCarrinho', idCarrinho.toString());
        }
        if (logradouro) {
            httpParams = httpParams.append('logradouro', logradouro);
        }
        if (numero) {
            httpParams = httpParams.append('numero', numero.toString());
        }
        if (bairro) {
            httpParams = httpParams.append('bairro', bairro);
        }
        if (cep) {
            httpParams = httpParams.append('cep', cep);
        }
        if (numeroCartao) {
            httpParams = httpParams.append('numeroCartao', numeroCartao);
        }
        if (codigoSeguranca) {
            httpParams = httpParams.append('codigoSeguranca', codigoSeguranca);
        }
        if (idEstado) {
            httpParams = httpParams.append('idEstado', idEstado.toString());
        }

        return this.httpCliente.get<Compra>(this.url + '/efetuarCompra', { params: httpParams });
    }

}

