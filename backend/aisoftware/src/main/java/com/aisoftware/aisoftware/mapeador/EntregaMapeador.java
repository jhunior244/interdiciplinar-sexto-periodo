package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.EntregaDto;
import com.aisoftware.aisoftware.entidade.Entrega;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {KitMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface EntregaMapeador {

    EntregaDto entregaToEntregaDto(Entrega entrega);
}
