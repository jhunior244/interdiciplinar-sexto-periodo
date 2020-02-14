package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Compra;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.OneToMany;
import java.io.Serializable;
import java.time.ZonedDateTime;
import java.util.List;

@Data
public class EntregaDto implements Serializable {

    private Long id;

    private String rua;

    private Integer numero;

    private String cep;

    private ZonedDateTime dataEntrega;

    private List<CompraDto> compra;
}
