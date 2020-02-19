package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.MarcaDto;
import com.aisoftware.aisoftware.entidade.Marca;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {ItemMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface MarcaMapeador {

    MarcaDto marcaToMarcaDto(Marca marca);
}
