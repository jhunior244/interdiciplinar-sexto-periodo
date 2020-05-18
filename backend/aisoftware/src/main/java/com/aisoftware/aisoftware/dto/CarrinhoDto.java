package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CarrinhoDto implements Serializable {

    private Long id;

    private List<ItemCarrinhoDto> listaItemCarrinho;
}
