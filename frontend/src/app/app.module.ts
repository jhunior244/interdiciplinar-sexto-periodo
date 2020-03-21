import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { FlexLayoutModule } from '@angular/flex-layout';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatCardModule, MatDividerModule, MatListModule, MatSidenavModule, MatToolbarModule, MatCheckboxModule } from '@angular/material';
import { MatButtonModule } from '@angular/material/button';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatMenuModule } from '@angular/material/menu';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PainelListaProdutosComponent } from './componente/painel-lista-produtos/painel-lista-produtos.component';
import { MatRadioModule } from '@angular/material/radio';
import { SlideOfertasComponent } from './componente/slide-ofertas/slide-ofertas.component';
import { TelaInicialComponent } from './tela/tela-inicial/tela-inicial.component';
import { CardProdutoComponent } from './componente/card-produto/card-produto.component';
import { FiltroProdutoComponent } from './componente/filtro-produto/filtro-produto.component';
import { ProdutosEmDestaqueComponent } from './componente/produtos-em-destaque/produtos-em-destaque.component';
import { FooterComponent } from './componente/footer/footer.component';
import { TelaListaDesktopComponent } from './tela/tela-lista-desktop/tela-lista-desktop.component';
import { KitService } from './servico/kit/kit.service';
import { MatPaginatorModule } from '@angular/material/paginator';
import { TelaListaNotebookComponent } from './tela/tela-lista-notebook/tela-lista-notebook.component';
import { TelaVisualizaProdutoComponent } from './tela/tela-visualiza-produto/tela-visualiza-produto.component';
import { TipoItemService } from './servico/tipo-item/tipo-item.service';
import { TelaLoginComponent } from './tela/home/tela-login.component';
import { AuthService } from './core/auth/auth.service';
import { UsuarioService } from './core/usuario/usuario.service';

@NgModule({
  declarations: [
    AppComponent,
    PainelListaProdutosComponent,
    SlideOfertasComponent,
    CardProdutoComponent,
    FiltroProdutoComponent,
    TelaInicialComponent,
    TelaListaNotebookComponent,
    TelaListaDesktopComponent,
    TelaVisualizaProdutoComponent,
    TelaLoginComponent,
    ProdutosEmDestaqueComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatMenuModule,
    MatIconModule,
    MatButtonModule,
    FlexLayoutModule,
    MatInputModule,
    MatFormFieldModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    MatCardModule,
    MatSidenavModule,
    MatToolbarModule,
    MatListModule,
    MatDividerModule,
    HttpClientModule,
    MatCheckboxModule,
    MatRadioModule,
    MatPaginatorModule
  ],
  providers: [KitService, TipoItemService, AuthService, UsuarioService],
  bootstrap: [AppComponent]
})
export class AppModule { }
