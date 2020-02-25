import { Component, OnInit, OnDestroy } from '@angular/core';
import { trigger, state, style } from '@angular/animations';

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

    public interval;

    pause = false;
    time = 3000;

    constructor() {
        this.imagemExibida = this.img1;
    }

    ngOnInit(): void {

        this.interval = setInterval(() => {
            if (this.pause) {
                this.time++;
            } else {
                this.time = 3000;
                if (this.ofertas === 'oferta1') {
                    this.ofertas = 'oferta2';
                    this.imagemExibida = this.img2;
                } else if (this.ofertas === 'oferta2') {
                    this.ofertas = 'oferta3';
                    this.imagemExibida = this.img3;
                } else if (this.ofertas === 'oferta3') {
                    this.ofertas = 'oferta1';
                    this.imagemExibida = this.img1;
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
}
