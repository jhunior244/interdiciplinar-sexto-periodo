import { Component, ViewChild } from '@angular/core';
import { MatMenuTrigger } from '@angular/material/menu';

@Component({
    selector: 'app-menu-principal',
    templateUrl: './menu-principal.component.html',
    styleUrls: ['./menu-principal.component.css']
})
export class MenuPrincipalComponent {
    @ViewChild(MatMenuTrigger, {static: true}) trigger: MatMenuTrigger;

    someMethod() {
      this.trigger.openMenu();
    }
}