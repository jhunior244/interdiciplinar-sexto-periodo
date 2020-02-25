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
import {MatRadioModule} from '@angular/material/radio';
import { SlideOfertasComponent } from './componente/slide-ofertas/slide-ofertas.component';
import { TelaInicialComponent } from './tela/tela-inicial/tela-inicial.component';
import { CardProdutoComponent } from './componente/card-produto/card-produto.component';
import { FiltroProdutoComponent } from './componente/filtro-produto/filtro-produto.component';
import { ProdutosEmDestaqueComponent } from './componente/produtos-em-destaque/produtos-em-destaque.component';
import { FooterComponent } from './componente/footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    PainelListaProdutosComponent,
    SlideOfertasComponent,
    CardProdutoComponent,
    FiltroProdutoComponent,
    TelaInicialComponent,
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
    MatRadioModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
