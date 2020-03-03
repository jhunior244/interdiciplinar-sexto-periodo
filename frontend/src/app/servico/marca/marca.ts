export class IMarca {
    id: number;
    nome: string;
}

export class Marca {
    id: number;
    nome: string;

    static doBackend(response: IMarca): Marca {
        let marca = Object.create(Marca.prototype);

        marca = Object.assign(marca, response, {
        });

        return marca;
    }

    paraBackend(): IMarca {
        const marca = Object.assign(Object.create(Marca.prototype), this, {

        });

        return marca;
    }
}

