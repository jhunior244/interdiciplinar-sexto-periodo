import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Carrinho } from 'src/app/servico/carrinho/carrinho';
import { Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { ItemCarrinho } from 'src/app/servico/item-carrinho/item-carrinho';

@Component({
    selector: 'app-menu-carrinho',
    templateUrl: './menu-carrinho.component.html',
    styleUrls: ['./menu-carrinho.component.css']
})
export class MenuCarrinhoComponent {
    quantidadeItensCarrinho: number;
    constructor(
        private sessaoService: SessaoService,
        private router: Router
    ) {
        this.sessaoService.getCarrinho().subscribe(carrinho => {
            this.quantidadeItensCarrinho = 0;
            if (carrinho && carrinho.listaItemCarrinho) {
                carrinho.listaItemCarrinho.forEach((item: ItemCarrinho) => {
                    if (item != null && item.kit != null && item.kit.quantidadeEstoque > 0) {
                        this.quantidadeItensCarrinho += item.quantidade;
                    }
                });
                console.log(carrinho);
            } else {
                this.quantidadeItensCarrinho = 0;
            }
        });
    }

    irParaCarrinho() {
        this.router.navigate([configuracao.rotaCarrinhoCompra]);
    }
}

