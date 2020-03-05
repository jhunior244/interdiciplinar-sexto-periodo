import { Component, Input, OnChanges, SimpleChanges } from '@angular/core';

@Component({
    selector: 'app-card-produto',
    templateUrl: './card-produto.component.html',
    styleUrls: ['./card-produto.component.css']
})
export class CardProdutoComponent implements OnChanges {

    @Input() item: any;

    ngOnChanges(changes: SimpleChanges): void {
        console.log(this.item);
    }
}