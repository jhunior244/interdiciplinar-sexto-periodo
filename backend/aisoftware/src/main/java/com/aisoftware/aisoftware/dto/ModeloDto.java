package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Atributo;
import com.aisoftware.aisoftware.entidade.TipoItem;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.io.Serializable;
import java.util.List;

@Data
public class ModeloDto implements Serializable {
    private Long id;

    private String nome;

    private TipoItemDto tipoItem;

    private List<AtributoDto> listaAtributo;
}
