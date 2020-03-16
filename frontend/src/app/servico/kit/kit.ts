import { TipoKit, ITipoKit } from '../tipo-kit/tipo-kit';
import { IItem, Item } from '../item/item';
import { IMarcaKit, MarcaKit } from '../marca-kit/marca-kit';
import { IModeloKit, ModeloKit } from '../modelo-kit/modelo-kit';
import { IImagem, Imagem } from '../imagem/imagem';

export class IKit {
    id: number;
    titulo: string;
    descricao: string;
    preco: number;
    marcaKit: IMarcaKit;
    tipoKit: ITipoKit;
    modeloKit: IModeloKit;
    listaItem: IItem[];
    listaImagem: IImagem[];
}

export class Kit {
    id: number;
    titulo: string;
    descricao: string;
    preco: number;
    marcaKit: MarcaKit;
    tipoKit: TipoKit;
    modeloKit: ModeloKit;
    listaItem: Item[];
    listaImagem: Imagem[];

    static listaDoBackend(response: IKit[]): Kit[] {
        const listaKit: Kit[] = [];

        for (const kitJSON of response) {
            listaKit.push(this.doBackend(kitJSON));
        }
        return listaKit;
    }

    static listaParaBackend(listaKit: Kit[]): IKit[] {
        const listaIKit: IKit[] = [];

        for (const kit of listaKit) {
            listaIKit.push(kit.paraBackend());
        }

        return listaIKit;
    }

    static doBackend(response: IKit): Kit {
        let kit = Object.create(Kit.prototype);

        kit = Object.assign(kit, response, {
            marcaKit: (response.marcaKit) ? MarcaKit.doBackend(response.marcaKit) : null,
            tipoKit: (response.tipoKit) ? TipoKit.doBackend(response.tipoKit) : null,
            modeloKit: (response.modeloKit) ? ModeloKit.doBackend(response.modeloKit) : null,
            listaItem: (response.listaItem) ? Item.listaDoBackend(response.listaItem) : null,
            listaImagem: (response.listaImagem) ? Imagem.listaDoBackend(response.listaImagem) : null,
        });
        return kit;
    }

    paraBackend(): IKit {
        const kit = Object.assign(Object.create(Kit.prototype), this, {
            marcaKit: (this.marcaKit) ? this.marcaKit.paraBackend() : null,
            tipoKit: (this.tipoKit) ? this.tipoKit.paraBackend() : null,
            modeloKit: (this.modeloKit) ? this.modeloKit.paraBackend() : null,
            listaItem: (this.listaItem) ? Item.listaParaBackend(this.listaItem) : null,
            listaImagem: (this.listaImagem) ? Imagem.listaParaBackend(this.listaImagem) : null,
        });

        return kit;
    }
}

