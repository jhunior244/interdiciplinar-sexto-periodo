package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Data
public class KitDto implements Serializable {
    private Long id;

    private String titulo;

    private String descricao;

    private BigDecimal preco;

    private TipoKitDto tipoKit;

    private MarcaItemDto marca;

    private List<ItemDto> listaItem;

    private List<ImagemDto> listaImagem;
}
