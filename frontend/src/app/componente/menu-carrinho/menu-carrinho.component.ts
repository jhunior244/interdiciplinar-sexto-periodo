import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { Carrinho } from 'src/app/servico/carrinho/carrinho';
import { Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';

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
            if (carrinho && carrinho.listaItemCarrinho) {
                this.quantidadeItensCarrinho = carrinho.listaItemCarrinho.length;
                console.log(carrinho);
            }
        });
    }

    irParaCarrinho(){
        this.router.navigate([configuracao.rotaCarrinhoCompra]);
    }
}

