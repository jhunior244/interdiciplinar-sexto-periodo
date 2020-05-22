package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.CompraKitDto;
import com.aisoftware.aisoftware.entidade.CompraKit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {
        CompraMapeador.class,
        KitMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CompraKitMapeador {

    CompraKit compraKitDtoToCompraKit(CompraKitDto compraKitDto);


    CompraKitDto compraKitToCompraKitDto(CompraKit compraKit);
}
