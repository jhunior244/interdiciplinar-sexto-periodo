import { Component, Input } from '@angular/core';

@Component({
    selector: 'app-tela-visualiza-produto',
    templateUrl: './tela-visualiza-produto.component.html',
    styleUrls: ['./tela-visualiza-produto.component.css']
})
export class TelaVisualizaProdutoComponent {

    @Input() item: any;

}

