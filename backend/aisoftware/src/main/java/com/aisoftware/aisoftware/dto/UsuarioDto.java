package com.aisoftware.aisoftware.dto;

import com.aisoftware.aisoftware.entidade.Compra;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.io.Serializable;
import java.util.List;

@Data
public class UsuarioDto implements Serializable {

    private Long id;

    private String nome;

    private String cpf;

    private String email;

    private List<CompraDto> listaCompra;
}
