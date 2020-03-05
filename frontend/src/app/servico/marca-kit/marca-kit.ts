export class IMarcaKit {
    id: number;
    nome: string;
}

export class MarcaKit {
    id: number;
    nome: string;

    static doBackend(response: IMarcaKit): MarcaKit {
        let marca = Object.create(MarcaKit.prototype);

        marca = Object.assign(marca, response, {
        });

        return marca;
    }

    paraBackend(): IMarcaKit {
        const marca = Object.assign(Object.create(MarcaKit.prototype), this, {

        });

        return marca;
    }
}

