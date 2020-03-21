package com.aisoftware.aisoftware.servico.item;

import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.repositorio.item.ItemJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class ItemServico implements IItemServico {

    @Autowired
    private ItemJpaRepository itemJpaRepository;

    @Override
    public Item cria(Item item) {
        return itemJpaRepository.save(item);
    }

    @Override
    public Item obtem(Long id) {
        return itemJpaRepository.findById(id).get();
    }
}
