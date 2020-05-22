package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class CompraKitDto implements Serializable {

    private Long id;

    private Integer quantidade;

    private KitDto kit;

    private CompraDto compra;
}
