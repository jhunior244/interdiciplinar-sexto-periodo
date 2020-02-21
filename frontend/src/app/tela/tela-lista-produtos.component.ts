import { Component, OnInit } from '@angular/core';
import { imagem } from './teste-imagem';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';
import { HttpClient } from '@angular/common/http';

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
        this.httpClient.get<any[]>('http://localhost:3000/flavio/photos').subscribe(fotos => {
            this.arr = fotos;
            console.log(this.arr);
        });
        console.log(this.arr);
    }
}