import { Component, OnInit } from '@angular/core';
import { KitService } from 'src/app/servico/kit/kit.service';
import { TipoKit } from 'src/app/servico/tipo-kit/tipo-kit';
import { configuracao } from 'src/app/configuracao';
import { Kit } from 'src/app/servico/kit/kit';
import { ModeloItem } from 'src/app/servico/modelo-item/modelo-item';

@Component({
    selector: 'app-lista-desktop',
    templateUrl: './tela-lista-desktop.component.html',
    styleUrls: ['./tela-lista-desktop.component.css']
})
export class TelaListaDesktopComponent implements OnInit {

    private tipoKitDesktop = new TipoKit();

    private listaTipoKit: TipoKit[] = [];
    private listaModeloItem: ModeloItem[] = [];

    public listaComputadores: Kit[];

    public idTipoKitDesktop: number;

    constructor(private kitService: KitService) {
        this.idTipoKitDesktop = configuracao.tipoKit.COMPUTADOR;
        this.tipoKitDesktop.id = configuracao.tipoKit.COMPUTADOR;
        this.listaTipoKit.push(this.tipoKitDesktop);
    }

    ngOnInit() {
        this.kitService.lista(this.listaTipoKit,  this.listaModeloItem, null, null, 0, 10).subscribe(pagina => {
            this.listaComputadores = pagina.conteudo;
        });
    }

    filtraProdutos(filtros: any[]){
        this.listaModeloItem = filtros;
        this.kitService.lista(this.listaTipoKit, this.listaModeloItem, null, null, 0, 10).subscribe(pagina => {
            this.listaComputadores = pagina.conteudo;
        });
    }
}

