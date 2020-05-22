package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.EstadoDto;
import com.aisoftware.aisoftware.entidade.Estado;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface EstadoMapeador {

    List<EstadoDto> paraListaEstadoDto(List<Estado> lista);
}
