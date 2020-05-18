import { Component, ViewEncapsulation } from '@angular/core';
import { configuracao } from './configuracao';
import { SessaoService } from './core/sessao/sessao.service';
import { Observable } from 'rxjs';
import { Usuario } from './core/usuario/usuario';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class AppComponent {

  public rotasSistema = configuracao;
  public exibeExpansion = false;
  constructor(
    private sessaoService: SessaoService
  ) {
    this.sessaoService.setCarrinho();
  }

  deslogar() {
    this.sessaoService.deslogar();
  }

  alteraExibeExpansion(){
    const x = document.getElementById("myDIV");
    if (x.style.display === "none") {
      x.style.display = "block";
      console.log('none')
    } else {
      x.style.display = "none";
      console.log('block');
    }
  }
}
