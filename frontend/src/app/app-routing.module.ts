import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { configuracao } from './configuracao';
import { TelaInicialComponent } from './tela/tela-inicial/tela-inicial.component';
import { TelaListaDesktopComponent } from './tela/tela-lista-desktop/tela-lista-desktop.component';
import { TelaListaNotebookComponent } from './tela/tela-lista-notebook/tela-lista-notebook.component';
import { TelaVisualizaProdutoComponent } from './tela/tela-visualiza-produto/tela-visualiza-produto.component';
import { TelaLoginComponent } from './tela/home/login/tela-login.component';
import { TelaCadastroComponent } from './tela/home/cadastro/tela-cadastro.component';
import { TelaCarrinhoComponent } from './tela/tela-carrinho/tela-carrinho.component';
import { TelaCompraComponent } from './tela/tela-compra/tela-compra.component';


const routes: Routes = [
  { path: configuracao.rotaInicio, component: TelaInicialComponent },
  { path: configuracao.rotaDesktop, component: TelaListaDesktopComponent },
  { path: configuracao.rotaNotebook, component: TelaListaNotebookComponent },
  { path: configuracao.rotaLogin, component: TelaLoginComponent },
  { path: configuracao.rotaCadastra, component: TelaCadastroComponent },
  { path: configuracao.rotaVisualizaProduto + '/:' + configuracao.parametroId, component: TelaVisualizaProdutoComponent },
  { path: configuracao.rotaCarrinhoCompra, component: TelaCarrinhoComponent },
  { path: configuracao.rotaVisualizaProduto, component: TelaVisualizaProdutoComponent },
  { path: configuracao.rotaComprar, component: TelaCompraComponent },

  { path: '**', component: TelaInicialComponent },
  { path: '', component: TelaInicialComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
