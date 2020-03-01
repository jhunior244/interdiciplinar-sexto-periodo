package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.TipoKitDto;
import com.aisoftware.aisoftware.entidade.TipoKit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {KitMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface TipoKitMapeador {

    TipoKitDto tipoKitToTipoKitDto(TipoKit tipoKit);

    TipoKit tipoKitDtoToTipoKit(TipoKitDto tipoKitDto);
}
