package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Data
public class ItemDto implements Serializable {

    private Long id;

    private String nome;

    private String descricao;

    private BigDecimal preco;

    private BigDecimal desconto;

    private ModeloItemDto modeloItem;

    private MarcaItemDto marcaItem;

    private List<ImagemDto> listaImagem;
}
