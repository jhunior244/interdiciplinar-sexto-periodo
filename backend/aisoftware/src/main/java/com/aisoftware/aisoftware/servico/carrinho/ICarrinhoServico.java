package com.aisoftware.aisoftware.servico.carrinho;

import com.aisoftware.aisoftware.entidade.Carrinho;

public interface ICarrinhoServico {
    Carrinho obtemPorTokenUsuario(String token);

    Carrinho adicionaKitCarrinho(Long idKit, Long idCarrinho);

    Carrinho decrementaQuantidadeItem(Long idItemCarrinho);

    Carrinho incrementaQuantidadeItem(Long idItemCarrinho);

    Carrinho retiraItemCarrinho(Long idItemCarrinho);
}
