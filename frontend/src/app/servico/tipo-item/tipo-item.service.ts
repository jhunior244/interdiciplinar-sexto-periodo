import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { ITipoItem, TipoItem } from './tipo-item';
import { configuracao } from 'src/app/configuracao';

@Injectable()
export class TipoItemService {
    url = 'http://localhost:8080' + '/tipoItem';
    httpHeader = new HttpHeaders();
    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }

    public lista(idTipoKit: number): Observable<TipoItem[]> {

        let httpParams = new HttpParams();

        if (idTipoKit != null) {
            httpParams = httpParams.append(configuracao.parametroIdTipoKit, idTipoKit.toString());
        }

        return this.httpCliente.get<ITipoItem[]>(this.url + '/lista', {params: httpParams})
            .pipe(map(((lista: TipoItem[]) => TipoItem.listaDoBackend(lista))));
    }
}