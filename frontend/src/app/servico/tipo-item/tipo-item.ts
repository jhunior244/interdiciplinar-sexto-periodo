import { IModeloItem, ModeloItem } from '../modelo-item/modelo-item';

export class ITipoItem {
    id: number;
    nome: string;
    listaModeloItem: IModeloItem[];
}

export class TipoItem {
    id: number;
    nome: string;
    listaModeloItem: ModeloItem[];

    static listaDoBackend(response: ITipoItem[]): TipoItem[] {
        const lista: TipoItem[] = [];

        for (const tipoItemJSON of response) {
            lista.push(this.doBackend(tipoItemJSON));
        }
        return lista;
    }

    static doBackend(response: ITipoItem): TipoItem {
        let tipoitem = Object.create(TipoItem.prototype);

        tipoitem = Object.assign(tipoitem, response, {
            listaModeloItem: (response.listaModeloItem) ? ModeloItem.listaDoBackend(response.listaModeloItem) : null,
        });

        return tipoitem;
    }

    paraBackend(): ITipoItem {
        const tipoitem = Object.assign(Object.create(TipoItem.prototype), this, {

        });

        return tipoitem;
    }
}