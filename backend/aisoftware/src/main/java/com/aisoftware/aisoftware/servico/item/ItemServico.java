package com.aisoftware.aisoftware.servico.item;

import com.aisoftware.aisoftware.entidade.Item;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class ItemServico implements IItemServico {

    @Override
    public Item cria(Item item) {
        return null;
    }

    @Override
    public Item obtem(Long id) {
        return null;
    }
}
