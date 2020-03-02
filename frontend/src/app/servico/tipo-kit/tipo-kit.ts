export class ITipoKit {
    id: number;
    nome: string;
}

export class TipoKit {
    id: number;
    nome: string;

    static doBackend(response: ITipoKit): TipoKit {
        let tipo = Object.create(TipoKit.prototype);

        tipo = Object.assign(tipo, response, {

        });
        return tipo;
    }

    paraBackend(): ITipoKit {
        const tipo = Object.assign(Object.create(TipoKit.prototype), this, {

        });

        return tipo;
    }
}