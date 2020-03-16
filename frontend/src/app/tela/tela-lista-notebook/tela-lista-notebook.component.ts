import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { configuracao } from '../../configuracao';
import { KitService } from '../../servico/kit/kit.service';
import { TipoKit } from '../../servico/tipo-kit/tipo-kit';
import { Kit } from '../../servico/kit/kit';
import { ModeloItem } from 'src/app/servico/modelo-item/modelo-item';

@Component({
    selector: 'app-tela-lista-notebook',
    templateUrl: './tela-lista-notebook.component.html',
})
export class TelaListaNotebookComponent implements OnInit {

    private tipoKitDesktop = new TipoKit();

    private listaTipoKit: TipoKit[] = [];
    private listaModeloItem: ModeloItem[] = [];

    public listaNotebook: Kit[];

    constructor(private kitService: KitService) {
        this.tipoKitDesktop.id = configuracao.tipoKit.NOTEBOOK;
        this.listaTipoKit.push(this.tipoKitDesktop);
    }

    ngOnInit() {
        this.kitService.lista(this.listaTipoKit, this.listaModeloItem, null, null, 0, 10).subscribe(pagina => {
            this.listaNotebook = pagina.conteudo;
        });
    }

    filtraProdutos(filtros: any[]){
        this.listaModeloItem = filtros;
        this.kitService.lista(this.listaTipoKit, this.listaModeloItem, null, null, 0, 10).subscribe(pagina => {
            this.listaNotebook = pagina.conteudo;
        });
    }
}

