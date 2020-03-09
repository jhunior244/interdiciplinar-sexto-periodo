package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.ZonedDateTime;
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

    @Column
    private BigDecimal preco;

    @Column
    private Boolean estaNaPromocao;

    @Column
    private ZonedDateTime dataValidadePromocao;

    @ManyToOne
    private MarcaKit marcaKit;

    @ManyToOne
    private TipoKit tipoKit;

    @ManyToOne
    private ModeloKit modeloKit;

    @ManyToMany
    private List<Item> listaItem;

    @ManyToMany
    private List<Imagem> listaImagem;
}
