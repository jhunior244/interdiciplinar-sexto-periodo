export class IMarcaItem {
    id: number;
    nome: string;
}

export class MarcaItem {
    id: number;
    nome: string;

    static doBackend(response: IMarcaItem): MarcaItem {
        let marca = Object.create(MarcaItem.prototype);

        marca = Object.assign(marca, response, {
        });

        return marca;
    }

    paraBackend(): IMarcaItem {
        const marca = Object.assign(Object.create(MarcaItem.prototype), this, {

        });

        return marca;
    }
}

