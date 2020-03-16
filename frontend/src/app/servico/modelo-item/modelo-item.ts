
export class IModeloItem {
    id: number;
    nome: string;
}

export class ModeloItem {
    id: number;
    nome: string;

    static listaDoBackend(response: IModeloItem[]): ModeloItem[] {
        const listaModeloItem: ModeloItem[] = [];

        for (const modeloJSON of response) {
            listaModeloItem.push(this.doBackend(modeloJSON));
        }
        return listaModeloItem;
    }

    static doBackend(response: IModeloItem): ModeloItem {
        let modeloItem = Object.create(ModeloItem.prototype);

        modeloItem = Object.assign(modeloItem, response, {
        });

        return modeloItem;
    }

    paraBackend(): IModeloItem {
        const modeloItem = Object.assign(Object.create(ModeloItem.prototype), this, {

        });

        return modeloItem;
    }
}

