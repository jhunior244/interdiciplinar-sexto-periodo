package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;


@Data
public class TipoItemDto implements Serializable {
    private Long id;

    private String nome;
}
