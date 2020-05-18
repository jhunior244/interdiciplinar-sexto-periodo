package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.ItemCarrinhoDto;
import com.aisoftware.aisoftware.entidade.ItemCarrinho;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring",uses = {
        KitMapeador.class,
        ItemMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ItemCarrinhoMapeador {

    ItemCarrinhoDto itemToItemDto(ItemCarrinho itemCarrinho);

    ItemCarrinho itemDtoToItem(ItemCarrinhoDto itemCarrinhoDto);

    List<ItemCarrinhoDto> listaToListaDto(List<ItemCarrinho> lista);
}
