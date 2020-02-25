package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class Kit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String titulo;

    @Column
    private String descricao;

    @ManyToMany
    private List<Item> listaItem;

    @ManyToMany
    private List<Compra> listaCompra;
}
