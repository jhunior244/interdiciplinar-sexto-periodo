package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.MarcaItemDto;
import com.aisoftware.aisoftware.entidade.MarcaItem;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {
        ItemMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MarcaItemMapeador {

    MarcaItemDto marcaToMarcaDto(MarcaItem marcaItem);

    MarcaItem marcaDtoToMarca(MarcaItemDto marcaItem);
}
