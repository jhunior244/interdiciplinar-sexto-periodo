package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.ItemDto;
import com.aisoftware.aisoftware.entidade.Item;
import org.mapstruct.Mapper;

@Mapper
public interface ItemMapeador {

    ItemDto itemToItemDto(Item item);
}
