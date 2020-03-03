package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.entidade.Kit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring",uses = {ItemMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface KitMapeador {

    KitDto kitToKitDto(Kit kit);

    Kit kitDtoToKit(KitDto kitDto);

    List<Kit> listDtoToList(List<KitDto> lista);

    List<KitDto> listToListDto(List<Kit> lista);
}
