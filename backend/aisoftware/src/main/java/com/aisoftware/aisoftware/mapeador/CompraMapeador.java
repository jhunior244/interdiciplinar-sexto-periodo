package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.CompraDto;
import com.aisoftware.aisoftware.entidade.Compra;
import org.mapstruct.Mapper;

@Mapper
public interface CompraMapeador {

    CompraDto compraToCompraDto(Compra compra);
}
