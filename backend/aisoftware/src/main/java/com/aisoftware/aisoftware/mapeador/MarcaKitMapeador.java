package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.MarcaItemDto;
import com.aisoftware.aisoftware.dto.MarcaKitDto;
import com.aisoftware.aisoftware.entidade.MarcaItem;
import com.aisoftware.aisoftware.entidade.MarcaKit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {
        KitMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MarcaKitMapeador {

    MarcaKitDto marcaToMarcaDto(MarcaKit marcaKit);

    MarcaKit marcaDtoToMarca(MarcaKitDto marcaKitDto);
}
