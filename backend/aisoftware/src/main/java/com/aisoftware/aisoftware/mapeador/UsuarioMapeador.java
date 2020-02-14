package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.UsuarioDto;
import com.aisoftware.aisoftware.entidade.Usuario;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface UsuarioMapeador {

    UsuarioDto usuarioToUsuarioDto(Usuario usuario);
}
