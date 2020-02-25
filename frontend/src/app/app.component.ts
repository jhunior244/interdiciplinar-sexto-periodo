import { Component } from '@angular/core';
import { rotas } from './rotas';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  public rotasSistema = rotas;
}
