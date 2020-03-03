import { Component, OnInit } from '@angular/core';
import { KitService } from 'src/app/servico/kit/kit.service';
import { TipoKit } from 'src/app/servico/tipo-kit/tipo-kit';
import { configuracao } from 'src/app/configuracao';
import { Kit } from 'src/app/servico/kit/kit';

@Component({
    selector: 'app-lista-desktop',
    templateUrl: './tela-lista-desktop.component.html',
    styleUrls: ['./tela-lista-desktop.component.css']
})
export class TelaListaDesktopComponent implements OnInit {

    private tipoKitDesktop = new TipoKit();

    private listaFiltro: TipoKit[] = [];

    public listaComputadores: Kit[];

    constructor(private kitService: KitService) {
        this.tipoKitDesktop.id = configuracao.tipoKit.COMPUTADOR;
        this.listaFiltro.push(this.tipoKitDesktop);
    }

    ngOnInit(){
        this.kitService.lista(this.listaFiltro, null, null, 0, 10).subscribe(lista => {
            this.listaComputadores = lista.conteudo;
        });
    }
}

