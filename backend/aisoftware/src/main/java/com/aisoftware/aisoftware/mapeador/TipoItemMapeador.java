package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.TipoItemDto;
import com.aisoftware.aisoftware.entidade.TipoItem;
import org.mapstruct.Mapper;

@Mapper
public interface TipoItemMapeador {

    TipoItemDto tipoItemToTipoItemDto(TipoItem tipoItem);
}
