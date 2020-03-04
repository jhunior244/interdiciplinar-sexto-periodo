package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.ItemDto;
import com.aisoftware.aisoftware.dto.ModeloKitDto;
import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.entidade.ModeloKit;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {
        KitMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ModeloKitMapeador {

    ModeloKitDto modeloKitToModeloKitDto(ModeloKit modeloKit);

    ModeloKit modeloKitDtoToModeloKit(ModeloKitDto modeloKit);
}
