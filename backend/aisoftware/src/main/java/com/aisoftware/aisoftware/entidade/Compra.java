package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.List;

@Entity
@Data
public class Compra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private ZonedDateTime data;

    @Column(nullable = false)
    private BigDecimal totalCompra;

    @Column
    private String numeroCartao;

    @Column
    private String codigoSeguranca;

    @ManyToOne
    private Usuario usuario;

    @ManyToOne
    private Entrega entrega;

    @ManyToMany
    private List<Item> listaItem;

    @OneToMany(mappedBy = "compra")
    private List<CompraKit> listaCompraKit;
}
