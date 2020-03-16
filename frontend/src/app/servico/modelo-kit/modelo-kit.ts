export class IModeloKit {
    id: number;
    nome: string;
}

export class ModeloKit {
    id: number;
    nome: string;

    static doBackend(response: IModeloKit): ModeloKit {
        let modelokit = Object.create(ModeloKit.prototype);

        modelokit = Object.assign(modelokit, response, {
        });

        return modelokit;
    }

    paraBackend(): IModeloKit {
        const modelokit = Object.assign(Object.create(ModeloKit.prototype), this, {

        });

        return modelokit;
    }
}

