package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Compra;
import com.aisoftware.aisoftware.entidade.Item;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.ManyToMany;
import java.io.Serializable;
import java.util.List;

@Data
public class KitDto implements Serializable {
    private Long id;

    private String titulo;

    private String descricao;

    private List<ItemDto> listaItem;

    private List<CompraDto> listaCompra;
}