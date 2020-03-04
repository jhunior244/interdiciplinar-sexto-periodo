package com.aisoftware.aisoftware.dto;

import lombok.Data;

import javax.persistence.Entity;
import java.io.Serializable;

@Data
public class MarcaKitDto implements Serializable {

    private Long id;

    private String nome;
}
