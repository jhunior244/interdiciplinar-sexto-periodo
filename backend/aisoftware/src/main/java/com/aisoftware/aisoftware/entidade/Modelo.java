package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Modelo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @ManyToOne
    private TipoItem tipoItem;

    @ManyToMany
    private List<Atributo> listaAtributo;
}
