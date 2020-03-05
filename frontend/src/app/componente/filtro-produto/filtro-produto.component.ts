import { Component, Input, OnChanges, SimpleChanges } from '@angular/core';

@Component({
    selector: 'app-filtro-produto',
    templateUrl: './filtro-produto.component.html',
    styleUrls: ['./filtro-produto.component.css']
})
export class FiltroProdutoComponent implements OnChanges {

    @Input() listaFiltros: any[] = [];

    ngOnChanges(changes: SimpleChanges): void {
    }
}

