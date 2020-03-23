import { Injectable } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { Item } from './item';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable()
export class ItemService {

    url = 'http://localhost:8080' + '/item';
    httpHeader = new HttpHeaders();

    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }

    public cria(item: Item): Observable<Item> {
        return this.httpCliente.post<Item>(this.url + '/cria', item.paraBackend(), { headers: this.httpHeader })
            .pipe(map(itemRetornado => Item.doBackend(itemRetornado) as Item));

    }
}

