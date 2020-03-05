export class IImagem {
    id: number;
    alt: string;
    caminho: string;
}

export class Imagem {
    id: number;
    alt: string;
    caminho: string;

    static listaDoBackend(response: IImagem[]): Imagem[] {
        const listaImagem: Imagem[] = [];

        for (const imagemJSON of response) {
            listaImagem.push(this.doBackend(imagemJSON));
        }
        return listaImagem;
    }

    static listaParaBackend(listaImagem: Imagem[]): IImagem[] {
        const listaIImagem: IImagem[] = [];

        for (const item of listaImagem) {
            listaIImagem.push(item.paraBackend());
        }

        return listaIImagem;
    }

    static doBackend(response: IImagem): Imagem {
        let imagem = Object.create(Imagem.prototype);

        imagem = Object.assign(imagem, response, {
        });

        return imagem;
    }

    paraBackend(): IImagem {
        const imagem = Object.assign(Object.create(Imagem.prototype), this, {

        });

        return imagem;
    }

}

