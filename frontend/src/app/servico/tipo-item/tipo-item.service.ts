import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { ITipoItem, TipoItem } from './tipo-item';

@Injectable()
export class TipoItemService {
    url = 'http://localhost:8080' + '/tipoItem';
    httpHeader = new HttpHeaders();
    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }

    public lista(): Observable<TipoItem[]> {

        return this.httpCliente.get<ITipoItem[]>(this.url + '/lista')
            .pipe(map(((lista: TipoItem[]) => TipoItem.listaDoBackend(lista))));
    }
}