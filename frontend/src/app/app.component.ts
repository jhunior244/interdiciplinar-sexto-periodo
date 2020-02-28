import { Component } from '@angular/core';
import { configuracao } from './configuracao';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  public rotasSistema = configuracao;
}
