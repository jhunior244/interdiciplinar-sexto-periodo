import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { rotas } from './rotas';
import { TelaInicialComponent } from './tela/tela-inicial/tela-inicial.component';


const routes: Routes = [
  {path: rotas.rotaInicio, component: TelaInicialComponent},



  {path: '**', component: TelaInicialComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
