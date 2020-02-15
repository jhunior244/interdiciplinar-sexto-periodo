package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.TransportadoraDto;
import com.aisoftware.aisoftware.entidade.Transportadora;
import org.mapstruct.Mapper;

@Mapper
public interface TransportadoraMapeador {
    TransportadoraDto transportadoraToTransportadoraDto(Transportadora transportadora);
}
