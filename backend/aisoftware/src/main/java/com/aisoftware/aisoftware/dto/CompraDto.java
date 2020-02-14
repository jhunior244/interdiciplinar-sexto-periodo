package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Entrega;
import com.aisoftware.aisoftware.entidade.Usuario;
import lombok.Data;

import java.io.Serializable;
import java.time.ZonedDateTime;

@Data
public class CompraDto implements Serializable {

    private Long id;

    private ZonedDateTime data;

    private UsuarioDto usuario;

    private EntregaDto entrega;
}
