package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.ItemDto;
import com.aisoftware.aisoftware.mapeador.ItemMapeador;
import com.aisoftware.aisoftware.servico.IItemServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("item")
public class ItemControllador {

    @Autowired
    private IItemServico itemServico;

    @Autowired
    private ItemMapeador itemMapeador;

    @PostMapping(path = "/cria")
    public ItemDto cria(@RequestBody ItemDto itemDto) {
        return itemMapeador.itemToItemDto(itemServico.cria(itemMapeador.itemDtoToItem(itemDto)));
    }

    @GetMapping(path = "/obtem")
    public ItemDto obtem(Long id){
        return itemMapeador.itemToItemDto(itemServico.obtem(id));
    }
}
