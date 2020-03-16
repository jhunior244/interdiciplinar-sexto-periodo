package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.ModeloItem;
import lombok.Data;

import java.io.Serializable;
import java.util.List;


@Data
public class TipoItemDto implements Serializable {
    private Long id;

    private String nome;

    private List<ModeloItemDto> listaModeloItem;
}
