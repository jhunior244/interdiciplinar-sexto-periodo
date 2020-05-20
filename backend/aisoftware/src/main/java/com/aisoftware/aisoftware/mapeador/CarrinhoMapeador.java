package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.CarrinhoDto;
import com.aisoftware.aisoftware.entidade.Carrinho;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring",uses = {
        ItemCarrinhoMapeador.class,
        UsuarioMapeador.class
}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CarrinhoMapeador {

    CarrinhoDto carrinhoToCarrinhoDto(Carrinho carrinho);

    Carrinho carrinhoDtoToCarrinho(CarrinhoDto carrinho);

    List<Carrinho> listDtoToList(List<CarrinhoDto> lista);

    List<CarrinhoDto> listToListDto(List<Carrinho> lista);
}
