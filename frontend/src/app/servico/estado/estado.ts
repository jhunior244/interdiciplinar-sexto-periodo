import { IItemCarrinho, ItemCarrinho } from '../item-carrinho/item-carrinho';
import * as moment from 'moment';

export class IEstado {
    id: number;
    nome: string;
    sigla: string;
}

export class Estado {
    id: number;
    nome: string;
    sigla: string;

    static listaDoBackend(response: IEstado[]): Estado[] {
        const listaEstado: Estado[] = [];

        for (const objJSON of response) {
            listaEstado.push(this.doBackend(objJSON));
        }

        return listaEstado;
    }

    static doBackend(response: IEstado): Estado {
        let estado = Object.create(Estado.prototype);

        if (response == null) {
            return null;
        }

        estado = Object.assign(estado, response, {
        });
        return estado;
    }

    paraBackend(): IEstado {
        const estado = Object.assign(Object.create(Estado.prototype), this, {
        });

        return estado;
    }
}