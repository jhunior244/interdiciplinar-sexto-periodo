package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.RequisitoDto;
import com.aisoftware.aisoftware.entidade.Requisito;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = { AtributoMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface RequisitoMapeador {

    RequisitoDto requisitoToRequisitoDto(Requisito requisito);

    Requisito requisitoDtoToRequisito(RequisitoDto requisitoDto);
}
