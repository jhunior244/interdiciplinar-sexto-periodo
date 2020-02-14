package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.time.ZonedDateTime;

@Entity
@Data
public class Compra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private ZonedDateTime data;

    @ManyToOne
    private Usuario usuario;

    @ManyToOne
    private Entrega entrega;
}
