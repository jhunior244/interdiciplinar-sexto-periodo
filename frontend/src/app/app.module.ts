import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
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
import { AuthService } from './core/auth/auth.service';
import { UsuarioService } from './core/usuario/usuario.service';
import { ItemService } from './servico/item/item.service';
import { RequestInterceptor } from './core/auth/request.interceptor';
import { SessaoService } from './core/sessao/sessao.service';
import {MatExpansionModule} from '@angular/material/expansion'; 
import { ExpansionPanelAcessoriosComponent } from './componente/expansion-panel-acessorios/expansion-panel-acessorios.component';
import { TelaLoginComponent } from './tela/home/login/tela-login.component';
import { TelaCadastroComponent } from './tela/home/cadastro/tela-cadastro.component';
import {MatSnackBarModule} from '@angular/material/snack-bar'; 

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
    TelaCadastroComponent,
    ProdutosEmDestaqueComponent,
    FooterComponent,
    ExpansionPanelAcessoriosComponent
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
    MatPaginatorModule,
    MatExpansionModule,
    MatSnackBarModule
  ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: RequestInterceptor,
      multi: true
    },
    KitService,
    TipoItemService,
    AuthService,
    UsuarioService,
    ItemService,
    SessaoService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
