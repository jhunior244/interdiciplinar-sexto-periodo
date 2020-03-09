import { animate, keyframes, state, style, transition, trigger, query } from '@angular/animations';
import { HttpClient } from '@angular/common/http';
import { Component, OnDestroy, OnInit, Input } from '@angular/core';
@Component({
    selector: 'app-painel-lista-produtos',
    templateUrl: 'painel-lista-produtos.component.html',
    styleUrls: ['painel-lista-produtos.component.css']
})
export class PainelListaProdutosComponent implements OnInit {

    @Input() lista: any[] = [];

    public filtros = [
        {
            nomeFiltro: 'Processador',
            opcoes: ['I3', 'I5', 'I7', 'I9']
        },
        {
            nomeFiltro: 'Placa mãe',
            opcoes: ['Asus', 'Gigabyte']
        },
        {
            nomeFiltro: 'SSD',
            opcoes: ['120gb', '240gb', '360gb']
        }
    ];

    public interval;
    constructor(
        private httpClient: HttpClient) {
    }

    ngOnInit(): void {
    }
}

