package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.ItemDto;
import com.aisoftware.aisoftware.entidade.Item;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {
        ModeloItemMapeador.class,
        MarcaItemMapeador.class,
        ImagemMapeador.class,
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ItemMapeador {

    ItemDto itemToItemDto(Item item);

    Item itemDtoToItem(ItemDto itemDto);
}
