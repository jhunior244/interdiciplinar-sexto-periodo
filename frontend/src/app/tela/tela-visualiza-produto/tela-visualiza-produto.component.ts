import { Component, Input } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { configuracao } from 'src/app/configuracao';
import { KitService } from 'src/app/servico/kit/kit.service';
import { ItemService } from 'src/app/servico/item/item.service';
import { HttpErrorResponse } from '@angular/common/http';
import { Kit } from 'src/app/servico/kit/kit';

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
        private itemService: ItemService
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

}

