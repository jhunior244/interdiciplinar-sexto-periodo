package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class ModeloItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nome;

    @ManyToOne
    private TipoItem tipoItem;

    @ManyToOne
    private TipoKit tipoKit;

    @ManyToMany
    private List<Atributo> listaAtributo;
}
