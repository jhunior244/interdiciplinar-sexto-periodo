package com.aisoftware.aisoftware.dto;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Data
public class TransportadoraDto implements Serializable {

    private Long id;

    private String nome;
}
