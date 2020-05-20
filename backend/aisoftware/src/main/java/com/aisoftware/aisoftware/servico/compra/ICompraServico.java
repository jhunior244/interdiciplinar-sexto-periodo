package com.aisoftware.aisoftware.servico.compra;

import com.aisoftware.aisoftware.entidade.Carrinho;
import com.aisoftware.aisoftware.entidade.Compra;

public interface ICompraServico {

    Compra efetuarCompra(Long idCarrinho,
                         String logradouro,
                         Long numero,
                         String bairro,
                         String cep,
                         String cidade,
                         String numeroCartao,
                         String codigoSeguranca);
}
