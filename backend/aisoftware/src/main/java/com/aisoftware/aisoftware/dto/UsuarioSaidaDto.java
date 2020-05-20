package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class UsuarioSaidaDto implements Serializable {

    private Long id;

    private String nome;

    private String email;

    private String token;
}
