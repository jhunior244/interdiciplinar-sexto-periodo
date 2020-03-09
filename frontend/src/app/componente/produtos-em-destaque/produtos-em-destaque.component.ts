import { Component, OnInit } from '@angular/core';
import { KitService } from 'src/app/servico/kit/kit.service';
import { Kit } from 'src/app/servico/kit/kit';
import { HttpErrorResponse } from '@angular/common/http';

@Component({
    selector: 'app-produtos-em-destaque',
    templateUrl: './produtos-em-destaque.component.html',
    styleUrls: ['./produtos-em-destaque.component.css']
})
export class ProdutosEmDestaqueComponent implements OnInit {

    public listaKit: Kit[] = [];


    constructor(private kitService: KitService) {

    }

    ngOnInit(): void {
        this.kitService.listaPromocao().subscribe(lista => {
            this.listaKit = lista;
        }, (erro: HttpErrorResponse) => {
            console.log(erro);
        });
    }
}

