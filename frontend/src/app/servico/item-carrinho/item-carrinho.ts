import { IKit, Kit } from '../kit/kit';
import { IItem, Item } from '../item/item';
import * as moment from 'moment';

export class IItemCarrinho {
    id: number;
    quantidade: number;
    dataAdicao: moment.Moment;
    kit: IKit;
    item: IItem;
}

export class ItemCarrinho {
    id: number;
    quantidade: number;
    dataAdicao: moment.Moment;
    kit: Kit;
    item: Item;

    static listaDoBackend(response: IItemCarrinho[]): ItemCarrinho[] {
        const listaItemCarrinho: ItemCarrinho[] = [];

        for (const objJSON of response) {
            listaItemCarrinho.push(this.doBackend(objJSON));
        }

        return listaItemCarrinho;
    }

    static listaParaBackend(lista: ItemCarrinho[]): IItemCarrinho[] {
        const listaIItemCarrinho: IItemCarrinho[] = [];

        for (const item of lista) {
            listaIItemCarrinho.push(item.paraBackend());
        }

        return listaIItemCarrinho;
    }

    static doBackend(response: IItemCarrinho): ItemCarrinho {
        let itemCarrinho = Object.create(ItemCarrinho.prototype);

        itemCarrinho = Object.assign(itemCarrinho, response, {
            kit: (response.kit) ? Kit.doBackend(response.kit) : null,
            item: (response.item) ? Item.doBackend(response.item) : null,
            dataAdicao: (response.dataAdicao) ? moment(response.dataAdicao) : null
        });

        return itemCarrinho;
    }

    paraBackend(): IItemCarrinho {
        const itemCarrinho = Object.assign(Object.create(ItemCarrinho.prototype), this, {
            kit: (this.kit) ? this.kit.paraBackend() : null,
            item: (this.item) ? this.item.paraBackend() : null,
            dataAdicao: (this.dataAdicao) ? moment(this.dataAdicao).toDate().toISOString() : null,
        });

        return itemCarrinho;
    }
}
