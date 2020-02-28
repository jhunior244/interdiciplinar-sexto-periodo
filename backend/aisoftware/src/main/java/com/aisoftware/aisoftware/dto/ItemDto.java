package com.aisoftware.aisoftware.dto;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import java.math.BigDecimal;

@Data
public class ItemDto implements Serializable {

    private Long id;

    private String nome;

    private String descricao;

    private BigDecimal preco;

    private BigDecimal desconto;

    private MarcaDto marca;
}
