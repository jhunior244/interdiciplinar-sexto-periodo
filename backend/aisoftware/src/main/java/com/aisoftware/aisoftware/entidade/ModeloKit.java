package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class ModeloKit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;
}
