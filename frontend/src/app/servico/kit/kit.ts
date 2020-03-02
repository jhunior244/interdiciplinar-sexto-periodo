import { TipoKit, ITipoKit } from '../tipo-kit/tipo-kit';
import { IItem, Item } from '../item/item';

export class IKit {
    id: number;
    titulo: string;
    descricao: string;
    preco: number;
    tipoKit: ITipoKit;
    listaItem: IItem[];
}

export class Kit {
    id: number;
    titulo: string;
    descricao: string;
    preco: number;
    tipoKit: TipoKit;
    listaItem: Item[];

    static listaDoBackend(response: IKit[]): Kit[] {
        const listaKit: Kit[] = [];

        for (const kitJSON of response) {
            listaKit.push(this.doBackend(kitJSON));
        }
        return listaKit;
    }

    static doBackend(response: IKit): Kit {
        let kit = Object.create(Kit.prototype);

        kit = Object.assign(kit, response, {

        });
        return kit;
    }

    paraBackend(): IKit {
        const kit = Object.assign(Object.create(Kit.prototype), this, {

        });

        return kit;
    }
}

