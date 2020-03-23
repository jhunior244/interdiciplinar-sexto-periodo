import { Component, Input, OnChanges, SimpleChanges } from '@angular/core';
import { Router } from '@angular/router';
import { configuracao } from 'src/app/configuracao';

@Component({
    selector: 'app-card-produto',
    templateUrl: './card-produto.component.html',
    styleUrls: ['./card-produto.component.css']
})
export class CardProdutoComponent implements OnChanges {

    @Input() item: any;

    constructor(
        private router: Router
    ){}

    ngOnChanges(changes: SimpleChanges): void {
    }

    irParaInformacoes(item) {
        this.router.navigate([configuracao.rotaVisualizaProduto + '/' + item.id]);
    }
}