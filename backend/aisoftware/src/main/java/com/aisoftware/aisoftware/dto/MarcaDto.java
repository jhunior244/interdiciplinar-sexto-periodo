package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Item;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class MarcaDto implements Serializable {
    private Long id;

    private String nome;

    private List<ItemDto> listaItem;
}
