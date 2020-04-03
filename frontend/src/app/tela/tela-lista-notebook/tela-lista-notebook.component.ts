import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { configuracao } from '../../configuracao';
import { KitService } from '../../servico/kit/kit.service';
import { TipoKit } from '../../servico/tipo-kit/tipo-kit';
import { Kit } from '../../servico/kit/kit';
import { ModeloItem } from 'src/app/servico/modelo-item/modelo-item';
import { Router } from '@angular/router';

@Component({
    selector: 'app-tela-lista-notebook',
    templateUrl: './tela-lista-notebook.component.html',
})
export class TelaListaNotebookComponent implements OnInit {

    private tipoNotebook = new TipoKit();

    private listaTipoKit: TipoKit[] = [];
    private listaModeloItem: ModeloItem[] = [];
    
    public idTipoKitNotebook: number;

    public listaNotebook: Kit[];

    constructor(
        private kitService: KitService,
        private router: Router
    ) {
        this.idTipoKitNotebook = configuracao.tipoKit.NOTEBOOK;
        this.tipoNotebook.id = configuracao.tipoKit.NOTEBOOK;
        this.listaTipoKit.push(this.tipoNotebook);
    }

    ngOnInit() {
        this.kitService.lista(this.listaTipoKit, this.listaModeloItem, null, null, 0, 8).subscribe(pagina => {
            this.listaNotebook = pagina.conteudo;
        });
    }

    filtraProdutos(filtros: any[]) {
        this.listaModeloItem = filtros;
        this.kitService.lista(this.listaTipoKit, this.listaModeloItem, null, null, 0, 8).subscribe(pagina => {
            this.listaNotebook = pagina.conteudo;
        });
    }

    irParaInformacoes(item) {
        this.router.navigate([configuracao.rotaVisualizaProduto + '/' + item.id]);
    }
}

