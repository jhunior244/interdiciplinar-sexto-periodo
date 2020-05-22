package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.List;

@Data
public class CompraDto implements Serializable {

    private Long id;

    private ZonedDateTime data;

    private BigDecimal totalCompra;

    private UsuarioSaidaDto usuario;

    private EntregaDto entrega;

    private List<CompraKitDto> listaCompraKit;
}
