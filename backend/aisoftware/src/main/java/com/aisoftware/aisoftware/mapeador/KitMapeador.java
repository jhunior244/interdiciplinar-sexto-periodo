package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.entidade.Kit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {CompraMapeador.class, ItemMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface KitMapeador {

    KitDto kitToKitDto(Kit kit);

    Kit kitDtoToKit(KitDto kitDto);
}
