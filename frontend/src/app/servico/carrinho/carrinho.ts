import { IItemCarrinho, ItemCarrinho } from '../item-carrinho/item-carrinho';

export class ICarrinho {
    id: number;
    listaItemCarrinho: IItemCarrinho[];
}

export class Carrinho {
    id: number;
    listaItemCarrinho: ItemCarrinho[];

    static listaDoBackend(response: ICarrinho[]): Carrinho[] {
        const listaCarrinho: Carrinho[] = [];

        for (const objJSON of response) {
            listaCarrinho.push(this.doBackend(objJSON));
        }

        return listaCarrinho;
    }

    static doBackend(response: ICarrinho): Carrinho {
        let carrinho = Object.create(Carrinho.prototype);
        
        if (response == null) {
            return null;
        }

        carrinho = Object.assign(carrinho, response, {
            listaItemCarrinho: (response.listaItemCarrinho) ? ItemCarrinho.listaDoBackend(response.listaItemCarrinho) : null,
        });
        return carrinho;
    }

    paraBackend(): ICarrinho {
        const carrinho = Object.assign(Object.create(Carrinho.prototype), this, {
            listaItemCarrinho: (this.listaItemCarrinho) ? ItemCarrinho.listaParaBackend(this.listaItemCarrinho) : null,
        });

        return carrinho;
    }
}