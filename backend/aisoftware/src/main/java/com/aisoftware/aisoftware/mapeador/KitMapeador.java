package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.entidade.Kit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring",uses = {
        MarcaKitMapeador.class,
        TipoKitMapeador.class,
        ModeloKitMapeador.class,
        ItemMapeador.class,
        ImagemMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface KitMapeador {

    KitDto kitToKitDto(Kit kit);

    Kit kitDtoToKit(KitDto kitDto);

    List<Kit> listDtoToList(List<KitDto> lista);

    List<KitDto> listToListDto(List<Kit> lista);
}
