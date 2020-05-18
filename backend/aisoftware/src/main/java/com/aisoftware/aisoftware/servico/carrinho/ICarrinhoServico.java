package com.aisoftware.aisoftware.servico.carrinho;

import com.aisoftware.aisoftware.entidade.Carrinho;

public interface ICarrinhoServico {
    Carrinho obtemPorTokenUsuario(String token);

    Carrinho adicionaKitCarrinho(Long idKit, Long idCarrinho);
}
