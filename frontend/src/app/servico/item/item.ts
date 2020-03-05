import { IMarcaItem, MarcaItem } from '../marca-item/marca-item';
import { ITipoItem, TipoItem } from '../tipo-item/tipo-item';

export class IItem {
    id: number;
    nome: string;
    descricao: string;
    preco: number;
    desconto: number;
    marca: IMarcaItem;
    tipoItem: ITipoItem;
}

export class Item {
    id: number;
    nome: string;
    descricao: string;
    preco: number;
    desconto: number;
    marca: MarcaItem;
    tipoItem: TipoItem;

    static listaDoBackend(response: IItem[]): Item[] {
        const listaItem: Item[] = [];

        for (const itemJSON of response) {
            listaItem.push(this.doBackend(itemJSON));
        }
        return listaItem;
    }
    static listaParaBackend(listaItem: Item[]): IItem[] {
        const listaIItem: IItem[] = [];

        for (const item of listaItem) {
            listaIItem.push(item.paraBackend());
        }

        return listaIItem;
    }


    static doBackend(response: IItem): Item {
        let item = Object.create(Item.prototype);

        item = Object.assign(item, response, {
            marca: (response.marca) ? MarcaItem.doBackend(response.marca) : null,
            tipoItem: (response.tipoItem) ? TipoItem.doBackend(response.tipoItem) : null,
        });
        return item;
    }

    paraBackend(): IItem {
        const item = Object.assign(Object.create(Item.prototype), this, {

        });

        return item;
    }
}