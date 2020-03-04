package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class AtributoDto implements Serializable {
    private Long id;

    private String nome;

    private List<ModeloItemDto> listaModelo;

    private List<RequisitoDto> listaRequisito;
}
