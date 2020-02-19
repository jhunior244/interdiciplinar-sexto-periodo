package com.aisoftware.aisoftware.servico;

import com.aisoftware.aisoftware.entidade.Item;

public interface IItemServico {
    Item cria(Item item);
    Item obtem(Long id);
}
