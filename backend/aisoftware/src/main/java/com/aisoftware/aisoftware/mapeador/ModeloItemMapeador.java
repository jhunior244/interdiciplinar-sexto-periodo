package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.ModeloItemDto;
import com.aisoftware.aisoftware.entidade.ModeloItem;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {
        ItemMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ModeloItemMapeador {

    @Mapping(target = "tipoItem", ignore = true)
    ModeloItemDto modeloToModeloDto(ModeloItem modeloItem);

    ModeloItem modeloDtotoModelo(ModeloItemDto modeloItemDto);
}
