import { Component, Input, OnInit, EventEmitter, Output } from '@angular/core';
import { TipoItemService } from 'src/app/servico/tipo-item/tipo-item.service';
@Component({
    selector: 'app-painel-lista-produtos',
    templateUrl: 'painel-lista-produtos.component.html',
    styleUrls: ['painel-lista-produtos.component.css']
})
export class PainelListaProdutosComponent implements OnInit {

    @Input() lista: any[] = [];
    @Input() listaFiltro: any[] = [];
    @Output() filtros = new EventEmitter<any[]>();

    constructor(
        private tipoItemService: TipoItemService
    ) { }

    ngOnInit(): void {
        this.tipoItemService.lista().subscribe(lista => {
            this.listaFiltro = lista;
        });
    }

    atualizaFiltros(filtros: any[]) {
        this.filtros.emit(filtros);
    }
}

