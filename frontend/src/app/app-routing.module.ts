import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { configuracao } from './configuracao';
import { TelaInicialComponent } from './tela/tela-inicial/tela-inicial.component';
import { TelaListaDesktopComponent } from './tela/tela-lista-desktop/tela-lista-desktop.component';
import { TelaListaNotebookComponent } from './tela/tela-lista-notebook/tela-lista-notebook.component';
import { TelaVisualizaProdutoComponent } from './tela/tela-visualiza-produto/tela-visualiza-produto.component';
import { TelaLoginComponent } from './tela/home/tela-login.component';


const routes: Routes = [
  { path: configuracao.rotaInicio, component: TelaInicialComponent },
  { path: configuracao.rotaDesktop, component: TelaListaDesktopComponent },
  { path: configuracao.rotaNotebook, component: TelaListaNotebookComponent },
  { path: configuracao.rotaLogin, component: TelaLoginComponent },
  { path: configuracao.rotaVisualizaProduto + '/:' + configuracao.parametroId, component: TelaVisualizaProdutoComponent },

  { path: configuracao.rotaVisualizaProduto, component: TelaVisualizaProdutoComponent },

  { path: '**', component: TelaInicialComponent },
  { path: '', component: TelaInicialComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
