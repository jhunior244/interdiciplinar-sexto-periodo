import { ICarrinho, Carrinho } from 'src/app/servico/carrinho/carrinho';

export class IUsuario {
    nome: string;
    email: string;
    senha: string;
    token: string;
    carrinho: ICarrinho;
}

export class Usuario {
    nome: string;
    email: string;
    senha: string;
    token: string;
    carrinho: Carrinho;

    static doBackend(response: IUsuario): Usuario {
        let usuario = Object.create(Usuario.prototype);
        if (response == null) {
            return null;
        }

        usuario = Object.assign(usuario, response, {
            carrinho: (response.carrinho) ? Carrinho.doBackend(response.carrinho) : null,
        });
        return usuario;
    }

    paraBackend(): IUsuario {
        const usuario = Object.assign(Object.create(Usuario.prototype), this, {
            carrinho: (this.carrinho) ? this.carrinho.paraBackend() : null,
        });

        return usuario;
    }
}

