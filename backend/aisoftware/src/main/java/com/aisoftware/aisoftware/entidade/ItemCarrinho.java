package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.time.ZonedDateTime;

@Data
@Entity
public class ItemCarrinho {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer quantidade;

    private ZonedDateTime dataAdicao;

    @ManyToOne
    private Carrinho carrinho;

    @ManyToOne
    private Kit kit;

    @ManyToOne
    private Item item;
}
