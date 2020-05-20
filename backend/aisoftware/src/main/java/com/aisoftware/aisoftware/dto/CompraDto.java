package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Entrega;
import com.aisoftware.aisoftware.entidade.Usuario;
import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.ZonedDateTime;

@Data
public class CompraDto implements Serializable {

    private Long id;

    private ZonedDateTime data;

    private BigDecimal totalCompra;

    private UsuarioSaidaDto usuario;

    private EntregaDto entrega;
}
