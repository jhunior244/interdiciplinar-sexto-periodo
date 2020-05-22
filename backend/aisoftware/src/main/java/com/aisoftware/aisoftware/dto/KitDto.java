package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.CompraKit;
import lombok.Data;

import javax.persistence.Column;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.List;

@Data
public class KitDto implements Serializable {
    private Long id;

    private String titulo;

    private String descricao;

    private BigDecimal preco;

    private Long quantidadeEstoque;

    private Boolean estaNaPromocao;

    private ZonedDateTime dataValidadePromocao;

    private TipoKitDto tipoKit;

    private MarcaKitDto marcaKit;

    private ModeloKitDto modeloKit;

    private List<ItemDto> listaItem;

    private List<CompraKitDto> listaCompraKit;

    private List<ImagemDto> listaImagem;
}
