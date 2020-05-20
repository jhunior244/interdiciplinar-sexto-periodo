import { IItemCarrinho, ItemCarrinho } from '../item-carrinho/item-carrinho';
import * as moment from 'moment';

export class ICompra {
    id: number;
    data: moment.Moment;
    totalCompra: number;
}

export class Compra {
    id: number;
    data: moment.Moment;
    totalCompra: number;

    static listaDoBackend(response: ICompra[]): Compra[] {
        const listaCompra: Compra[] = [];

        for (const objJSON of response) {
            listaCompra.push(this.doBackend(objJSON));
        }

        return listaCompra;
    }

    static doBackend(response: ICompra): Compra {
        let compra = Object.create(Compra.prototype);
        
        if (response == null) {
            return null;
        }

        compra = Object.assign(compra, response, {
            dataAdicao: (response.data) ? moment(response.data) : null
        });
        return compra;
    }

    paraBackend(): ICompra {
        const compra = Object.assign(Object.create(Compra.prototype), this, {
            dataAdicao: (this.data) ? moment(this.data).toDate().toISOString() : null,
        });

        return compra;
    }
}