package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.StatusEntregaDto;
import com.aisoftware.aisoftware.entidade.StatusEntrega;
import org.mapstruct.Mapper;

@Mapper
public interface StatusEtregaMapeador {

    StatusEntregaDto statusEntregaToStatusEntregaDto(StatusEntrega statusEntrega);
}
