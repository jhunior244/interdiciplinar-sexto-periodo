import { Injectable } from "@angular/core";
import { HttpHeaders, HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { IPagina } from '../pagina/pagina';
import { IKit, Kit } from './kit';
import { TipoKit } from '../tipo-kit/tipo-kit';
import { configuracao } from 'src/app/configuracao';
import { map } from 'rxjs/operators';
import { ModeloItem } from '../modelo-item/modelo-item';

@Injectable()
export class KitService {
    url = 'http://localhost:8080' + '/produtos';
    httpHeader = new HttpHeaders();
    constructor(
        private httpCliente: HttpClient) {
        this.httpHeader = this.httpHeader.append('Content-Type', 'application/json');
    }

    public lista(listTipoKit: TipoKit[], listaModeloItem: ModeloItem[], valorMinimo: number, valorMaximo: number, numeroPagina: number,
        tamanhoPagina: number): Observable<IPagina<IKit, Kit>> {

        let httpParams = new HttpParams();

        const listaIdTipoKit = new Array<string>();
        if (listTipoKit) {
            for (const kit of listTipoKit) {
                listaIdTipoKit.push(kit.id.toString());
            }
            for (const idKit of listaIdTipoKit) {
                httpParams = httpParams.append(configuracao.parametroListaIdTipoKit, idKit);
            }
        }

        const listaIdModeloItem = new Array<string>();
        if (listaModeloItem) {
            for (const modelo of listaModeloItem) {
                listaIdModeloItem.push(modelo.id.toString());
            }
            for (const id of listaIdModeloItem) {
                httpParams = httpParams.append(configuracao.parametroListaIdModeloItem, id);
            }
        }

        if (valorMinimo) {
            httpParams = httpParams.append(configuracao.parametroValorMinimo, valorMinimo.toString());
        }

        if (valorMaximo) {
            httpParams = httpParams.append(configuracao.parametroValorMaximo, valorMaximo.toString());
        }

        httpParams = httpParams.append('numeroPagina', numeroPagina.toString());
        httpParams = httpParams.append('tamanhoPagina', tamanhoPagina.toString());


        return this.httpCliente.get<IPagina<IKit, Kit>>(this.url + '/lista', { params: httpParams })
            .pipe(map((pagina => this.obtemPagina(pagina))));
    }

    public listaPromocao(): Observable<Kit[]> {

        return this.httpCliente.get<IKit[]>(this.url + '/listaPromocao')
            .pipe(map(((lista: Kit[]) => Kit.listaDoBackend(lista))));
    }

    private obtemPagina(pagina: IPagina<IKit, Kit>): IPagina<IKit, Kit> {
        pagina.conteudo = Kit.listaDoBackend(pagina.content);
        return pagina;
    }
}

