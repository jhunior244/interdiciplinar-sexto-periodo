package com.aisoftware.aisoftware.dto;

import lombok.Data;

import javax.persistence.Column;
import java.io.Serializable;

@Data
public class ImagemDto implements Serializable {
    private Long id;

    private String alt;

    private String caminho;
}
