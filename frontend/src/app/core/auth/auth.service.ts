import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { configuracao } from '../../configuracao';
import { tap } from 'rxjs/operators';
import { TokenService } from '../token/token.service';
import { UsuarioService } from '../usuario/usuario.service';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(
    private http: HttpClient,
    private usuarioService: UsuarioService
    ) { }

  autenticar(email: string, senha: string){
    return this.http.post(configuracao.rotaBackend + '/login', 
    {email, senha},
    {observe: 'response'})
          .pipe(tap(res => {
              const authToken = res.headers.get('x-access-token');
              this.usuarioService.setToken(authToken);
          }));
  }
}
