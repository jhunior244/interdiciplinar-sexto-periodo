package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Data
@Entity
public class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false)
    private String descricao;

    @Column(nullable = false)
    private BigDecimal preco;

    @Column
    private BigDecimal desconto;

    @ManyToOne
    private MarcaItem marcaItem;

    @ManyToOne
    private ModeloItem modeloItem;

    @ManyToMany
    private List<Imagem> listaImagem;
}
