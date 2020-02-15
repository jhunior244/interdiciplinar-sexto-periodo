package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.CompraDto;
import com.aisoftware.aisoftware.entidade.Compra;
import com.aisoftware.aisoftware.entidade.Entrega;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {UsuarioMapeador.class, EntregaMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CompraMapeador {

    CompraDto compraToCompraDto(Compra compra);
}
