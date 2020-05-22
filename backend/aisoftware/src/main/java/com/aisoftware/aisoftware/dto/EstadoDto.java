package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class EstadoDto implements Serializable {

    private Long id;

    private String nome;

    private String sigla;
}
