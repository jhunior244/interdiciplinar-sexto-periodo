import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from "@angular/core";
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { Estado, IEstado } from './estado';

@Injectable()
export class EstadoService {
    url = 'http://localhost:8080' + '/estado';
    httpHeader = new HttpHeaders();
    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }

    public lista(): Observable<Estado[]> {
        return this.httpCliente.get<IEstado[]>(this.url + '/lista')
            .pipe(map(((lista: Estado[]) => Estado.listaDoBackend(lista))));
    }
}

