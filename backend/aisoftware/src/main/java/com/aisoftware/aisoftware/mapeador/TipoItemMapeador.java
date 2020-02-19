package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.TipoItemDto;
import com.aisoftware.aisoftware.entidade.TipoItem;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {ItemMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface TipoItemMapeador {

    TipoItemDto tipoItemToTipoItemDto(TipoItem tipoItem);
}
