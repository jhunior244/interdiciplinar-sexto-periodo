package com.aisoftware.aisoftware.mapeador;

import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {CompraMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ImagemMapeador {
}
