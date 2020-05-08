import { Component } from "@angular/core";
import { configuracao } from 'src/app/configuracao';

@Component({
    selector: 'app-menu-principal',
    templateUrl: './menu-principal.component.html',
    styleUrls: ['./menu-principal.component.css']
})
export class MenuPrincipalComponent {
    public rotasSistema = configuracao;
}