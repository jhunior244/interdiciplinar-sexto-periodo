import { state, style, trigger } from '@angular/animations';
import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnDestroy, OnInit } from '@angular/core';
import { Kit } from 'src/app/servico/kit/kit';
import { KitService } from 'src/app/servico/kit/kit.service';
import { ActivatedRoute, Data, Router } from '@angular/router';
import { Observable, BehaviorSubject } from 'rxjs';
import { configuracao } from 'src/app/configuracao';

@Component({
    selector: 'app-slide-ofertas',
    templateUrl: './slide-ofertas.component.html',
    styleUrls: ['./slide-ofertas.component.css'],
    animations: [
        trigger('teste', [
            state('oferta1', style({
            })),
            state('oferta2', style({
            })),
            state('oferta3', style({
            })),
        ])
    ]
})
export class SlideOfertasComponent implements OnInit, OnDestroy {
    ofertas: 'oferta1' | 'oferta2' | 'oferta3' = 'oferta1';

    img1 = '../../assets/imagens/pc-1.png';
    img2 = '../../assets/imagens/pc-2.jpg';
    img3 = '../../assets/imagens/pc-3.jpg';
    imagemExibida = '';

    public listaKit: Kit[] = [];
    public item = new Kit();

    public interval;

    pause = false;
    time = 3000;

    constructor(
        private kitService: KitService,
        private activatedRoute: ActivatedRoute,
        private router: Router
    ) {

    }

    ngOnInit(): void {

        this.kitService.listaPromocao().subscribe(lista => {
            this.listaKit = lista;
            if (this.listaKit && this.listaKit[0] && this.listaKit[0].listaImagem && this.listaKit[0].listaImagem[0]) {
                this.imagemExibida = this.listaKit[0].listaImagem[0].caminho;
                this.item = this.listaKit[0];
            }
        }, (erro: HttpErrorResponse) => {
            console.log(erro);
        });

        this.interval = setInterval(() => {
            if (this.pause) {
                this.time++;
            } else {
                this.time = 3000;
                if (this.ofertas === 'oferta1' &&
                    this.listaKit && this.listaKit[1] &&
                    this.listaKit[1].listaImagem &&
                    this.listaKit[0].listaImagem[0]) {
                    this.ofertas = 'oferta2';
                    this.imagemExibida = this.listaKit[1].listaImagem[0].caminho;
                    this.item = this.listaKit[1];
                } else if (this.ofertas === 'oferta2' &&
                    this.listaKit && this.listaKit[2] &&
                    this.listaKit[2].listaImagem &&
                    this.listaKit[0].listaImagem[0]) {
                    this.ofertas = 'oferta3';
                    this.imagemExibida = this.listaKit[2].listaImagem[0].caminho;
                    this.item = this.listaKit[2];
                } else if (this.ofertas === 'oferta3' &&
                    this.listaKit && this.listaKit[0] &&
                    this.listaKit[0].listaImagem &&
                    this.listaKit[0].listaImagem[0]) {
                    this.ofertas = 'oferta1';
                    this.imagemExibida = this.listaKit[0].listaImagem[0].caminho;
                    this.item = this.listaKit[0];
                }
            }
        }, this.time);

    }

    ngOnDestroy(): void {
        clearInterval(this.interval);
    }

    mouseEnter() {
        this.pause = true;
    }

    mouseLeave() {
        this.pause = false;
    }

    selecionaImagem(event) {
        if (event && event.value && event.value.listaImagem && event.value.listaImagem[0]) {
            this.imagemExibida = event.value.listaImagem[0].caminho;
            this.item = event.value;
        }
    }

    irParaInformacoes(item) {
        this.router.navigate([configuracao.rotaVisualizaProduto + '/' + item.id]);
    }
}
