import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
    selector: 'app-tela-lista-produtos',
    templateUrl: 'tela-lista-produtos.component.html',
    styleUrls: ['tela-lista-produtos.component.css']
})
export class TelaListaProdutosComponent implements OnInit {

    public arr: any[] = [];

    public img2 = this.arr[0];
    public img3 = this.arr[0];
    public img4 = this.arr[0];
    public img5 = this.arr[0];

    constructor(
        private sanitizer: DomSanitizer,
        private httpClient: HttpClient) {

    }

    ngOnInit(): void {
        for (let i = 0; i < 25; i++) {
            this.arr.push('dfdf');
        }

    }
}