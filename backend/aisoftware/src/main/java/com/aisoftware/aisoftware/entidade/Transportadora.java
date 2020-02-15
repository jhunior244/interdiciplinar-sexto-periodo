package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Transportadora {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = false)
    private String nome;
}
