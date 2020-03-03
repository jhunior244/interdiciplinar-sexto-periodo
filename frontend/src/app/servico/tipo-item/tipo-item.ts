export class ITipoItem {
    id: number;
    nome: string;
}

export class TipoItem {
    id: number;
    nome: string;

    static doBackend(response: ITipoItem): TipoItem {
        let tipoitem = Object.create(TipoItem.prototype);

        tipoitem = Object.assign(tipoitem, response, {
        });

        return tipoitem;
    }

    paraBackend(): ITipoItem {
        const tipoitem = Object.assign(Object.create(TipoItem.prototype), this, {

        });

        return tipoitem;
    }
}