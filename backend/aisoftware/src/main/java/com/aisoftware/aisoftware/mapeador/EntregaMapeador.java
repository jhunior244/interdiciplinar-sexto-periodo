package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.EntregaDto;
import com.aisoftware.aisoftware.entidade.Entrega;
import org.mapstruct.Mapper;

@Mapper(uses = {CompraMapeador.class})
public interface EntregaMapeador {

    EntregaDto entregaToEntregaDto(Entrega entrega);
}
