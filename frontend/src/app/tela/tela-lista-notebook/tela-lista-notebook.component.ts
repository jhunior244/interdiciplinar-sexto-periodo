import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { configuracao } from '../../configuracao';
import { KitService } from '../../servico/kit/kit.service';
import { TipoKit } from '../../servico/tipo-kit/tipo-kit';
import { Kit } from '../../servico/kit/kit';

@Component({
    selector: 'app-tela-lista-notebook',
    templateUrl: './tela-lista-notebook.component.html',
})
export class TelaListaNotebookComponent implements OnInit {

    private tipoKitDesktop = new TipoKit();

    private listaFiltro: TipoKit[] = [];

    public listaNotebook: Kit[];

    constructor(private kitService: KitService) {
        this.tipoKitDesktop.id = configuracao.tipoKit.NOTEBOOK;
        this.listaFiltro.push(this.tipoKitDesktop);
    }

    ngOnInit() {
        this.kitService.lista(this.listaFiltro, null, null, 0, 10).subscribe(pagina => {
            this.listaNotebook = pagina.conteudo;
            console.log(this.listaNotebook);
        });
    }
}