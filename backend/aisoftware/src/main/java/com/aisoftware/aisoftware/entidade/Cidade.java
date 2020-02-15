package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Cidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = false)
    private String nome;

    @ManyToOne
    private Estado estado;
}
