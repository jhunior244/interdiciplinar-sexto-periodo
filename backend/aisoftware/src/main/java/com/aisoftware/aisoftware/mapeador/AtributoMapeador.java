package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.AtributoDto;
import com.aisoftware.aisoftware.entidade.Atributo;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {ModeloItemMapeador.class, RequisitoMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface AtributoMapeador {

    AtributoDto atributoToAtributoDto(Atributo atributo);

    Atributo atributoDtoToAtributo(AtributoDto atributoDto);
}
