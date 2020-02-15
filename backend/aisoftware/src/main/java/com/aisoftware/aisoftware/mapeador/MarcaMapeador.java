package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.MarcaDto;
import com.aisoftware.aisoftware.entidade.Marca;
import org.mapstruct.Mapper;

@Mapper
public interface MarcaMapeador {

    MarcaDto marcaToMarcaDto(Marca marca);
}
