package com.aisoftware.aisoftware.dto;

import lombok.Data;

import java.io.Serializable;
import java.time.ZonedDateTime;

@Data
public class ItemCarrinhoDto implements Serializable {

    private Long id;

    private Integer quantidade;

    private ZonedDateTime dataAdicao;

    private KitDto kit;

    private ItemDto item;
}
