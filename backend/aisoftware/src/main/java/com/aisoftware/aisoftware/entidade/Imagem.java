package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Imagem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String alt;

    @Column(nullable = false)
    private String caminho;
}
