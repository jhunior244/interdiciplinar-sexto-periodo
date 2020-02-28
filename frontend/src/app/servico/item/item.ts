import { IMarca, Marca } from '../marca/marca';
import { ITipoItem, TipoItem } from '../tipo-item/tipo-item';

export class IItem {
    id: number;
    nome: string;
    descricao: string;
    preco: number;
    desconto: number;
    marca: IMarca;
    tipoItem: ITipoItem;
}

export class Item {
    id: number;
    nome: string;
    descricao: string;
    preco: number;
    desconto: number;
    marca: Marca;
    tipoItem: TipoItem;

    static listaDoBackend(response: IItem[]): Item[] {
        const listaItem: Item[] = [];

        for (const itemJSON of response) {
            listaItem.push(this.doBackend(itemJSON));
        }
        return listaItem;
    }

    static doBackend(response: IItem): Item {
        let item = Object.create(Item.prototype);

        item = Object.assign(item, response, {

        });
        return item;
    }

    paraBackend(): IItem {
        const item = Object.assign(Object.create(Item.prototype), this, {

        });

        return item;
    }
}