import { Component, Input } from '@angular/core';

@Component({
    selector: 'app-card-produto',
    templateUrl: './card-produto.component.html',
    styleUrls: ['./card-produto.component.css']
})
export class CardProdutoComponent {

    @Input() item: any;
}