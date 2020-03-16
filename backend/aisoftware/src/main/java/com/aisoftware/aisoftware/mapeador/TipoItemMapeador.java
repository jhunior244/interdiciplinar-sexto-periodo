package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.TipoItemDto;
import com.aisoftware.aisoftware.entidade.TipoItem;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring",uses = {
        ModeloItemMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface TipoItemMapeador {

    TipoItemDto tipoItemToTipoItemDto(TipoItem tipoItem);

    List<TipoItemDto> listToListDto(List<TipoItem> lista);
}
