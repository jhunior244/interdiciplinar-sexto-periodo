package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.ModeloDto;
import com.aisoftware.aisoftware.entidade.Modelo;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {TipoItemMapeador.class, AtributoMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)

public interface ModeloMapeador {

    ModeloDto modeloToModeloDto(Modelo modelo);

    Modelo modeloDtotoModelo(ModeloDto modeloDto);
}
