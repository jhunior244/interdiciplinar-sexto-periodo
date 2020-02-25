package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Data
public class Requisito {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String nome;

    @Column
    private Boolean permiteMaior;

    @Column
    private BigDecimal valor;

    @ManyToMany
    private List<Atributo> listaAtributo;
}
