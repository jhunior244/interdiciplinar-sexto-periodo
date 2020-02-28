package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Atributo;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.ManyToMany;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Data
public class RequisitoDto implements Serializable {
    private Long id;

    private String nome;

    private Boolean permiteMaior;

    private BigDecimal valor;

    private List<AtributoDto> listaAtributo;
}
