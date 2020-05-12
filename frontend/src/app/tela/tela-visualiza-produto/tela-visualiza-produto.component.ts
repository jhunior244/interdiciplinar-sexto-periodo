import { Component, Input } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { KitService } from 'src/app/servico/kit/kit.service';
import { ItemService } from 'src/app/servico/item/item.service';
import { HttpErrorResponse } from '@angular/common/http';
import { Kit } from 'src/app/servico/kit/kit';
import { SessaoService } from 'src/app/core/sessao/sessao.service';
import { UsuarioService } from 'src/app/core/usuario/usuario.service';

@Component({
    selector: 'app-tela-visualiza-produto',
    templateUrl: './tela-visualiza-produto.component.html',
    styleUrls: ['./tela-visualiza-produto.component.css']
})
export class TelaVisualizaProdutoComponent {

    id: number;
    public kit: Kit;
    public caminhoImagemFull = '';
    constructor(
        private activatedRoute: ActivatedRoute,
        private kitService: KitService,
        private itemService: ItemService,
        private sessaoService: SessaoService,
        private usuarioService: UsuarioService,
        private router: Router
    ) {
        this.activatedRoute.params.subscribe(params => {
            this.id = params[configuracao.parametroId];
            if (this.id != null) {
                this.kitService.obtem(this.id).subscribe(kit => {
                    this.kit = kit;
                    if (this.kit && this.kit.listaImagem && this.kit.listaImagem[0]) {
                        this.caminhoImagemFull = this.kit.listaImagem[0].caminho;
                    }
                }, (erro: HttpErrorResponse) => {
                    console.log(erro);
                });
            }
        });
    }
    alteraImagem(caminho: string) {
        this.caminhoImagemFull = caminho;
    }


    comprar() {
        console.log();
        if (this.usuarioService.estaLogado()) {
            this.router.navigate([configuracao.rotaComprar + '/' + this.id]);
        } else {
            this.sessaoService.setRotaRedirecionarAposLogin(configuracao.rotaVisualizaProduto + '/' + this.id);
            this.router.navigate([configuracao.rotaLogin]);
        }
    }

}

