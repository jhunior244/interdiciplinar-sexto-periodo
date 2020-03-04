package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
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

    @ManyToOne
    private MarcaItem marcaItem;

    @ManyToOne
    private TipoKit tipoKit;

    @ManyToMany
    private List<Item> listaItem;

    @ManyToMany
    private List<Imagem> listaImagem;
}
