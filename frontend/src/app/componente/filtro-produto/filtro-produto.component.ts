import { Component, Input, OnChanges, SimpleChanges, Output, EventEmitter } from '@angular/core';

@Component({
    selector: 'app-filtro-produto',
    templateUrl: './filtro-produto.component.html',
    styleUrls: ['./filtro-produto.component.css']
})
export class FiltroProdutoComponent implements OnChanges {

    @Input() listaFiltros: any[] = [];
    @Output() filtros = new EventEmitter<any[]>();
    private filtrosMarcados: any[] = [];


    ngOnChanges(changes: SimpleChanges): void {
    }

    anunciaListaSelecionados(event) {
        if (event.checked) {
            this.filtrosMarcados.push(event.source.value);
        } else {
            const index = this.filtrosMarcados.indexOf(event.source.value);
            this.filtrosMarcados.splice(index, 1);
        }

        this.filtros.emit(this.filtrosMarcados);
    }
}

