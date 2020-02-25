package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Modelo;
import com.aisoftware.aisoftware.entidade.Requisito;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.ManyToMany;
import java.io.Serializable;
import java.util.List;

@Data
public class AtributoDto implements Serializable {
    private Long id;

    private String nome;

    private List<ModeloDto> listaModelo;

    private List<RequisitoDto> listaRequisito;
}
