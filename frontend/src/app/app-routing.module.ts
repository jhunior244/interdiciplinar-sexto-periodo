import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { configuracao } from './configuracao';
import { TelaInicialComponent } from './tela/tela-inicial/tela-inicial.component';
import { TelaListaDesktopComponent } from './tela/tela-lista-desktop/tela-lista-desktop.component';


const routes: Routes = [
  { path: configuracao.rotaInicio, component: TelaInicialComponent },
  { path: configuracao.rotaDesktop, component: TelaListaDesktopComponent },


  { path: '**', component: TelaInicialComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
