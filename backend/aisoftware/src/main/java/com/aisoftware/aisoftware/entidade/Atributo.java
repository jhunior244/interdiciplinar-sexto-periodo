package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Atributo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @ManyToMany
    private List<Modelo> listaModelo;

    @ManyToMany
    private List<Requisito> listaRequisito;
}
