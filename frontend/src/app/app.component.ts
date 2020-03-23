import { Component } from '@angular/core';
import { configuracao } from './configuracao';
import { SessaoService } from './core/sessao/sessao.service';
import { Observable } from 'rxjs';
import { Usuario } from './core/usuario/usuario';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  public rotasSistema = configuracao;
  public usuarioLogado$: Observable<Usuario>;
  constructor(
    private sessaoService: SessaoService
  ) {
    this.usuarioLogado$ = this.sessaoService.getUsuarioLogado();
  }

  deslogar() {
    this.sessaoService.deslogar();
  }
}
