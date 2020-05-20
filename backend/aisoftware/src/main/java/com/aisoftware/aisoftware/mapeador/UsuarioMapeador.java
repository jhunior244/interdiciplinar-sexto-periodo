package com.aisoftware.aisoftware.mapeador;

import com.aisoftware.aisoftware.dto.UsuarioDto;
import com.aisoftware.aisoftware.dto.UsuarioSaidaDto;
import com.aisoftware.aisoftware.entidade.Usuario;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring",uses = {CompraMapeador.class}, unmappedTargetPolicy = ReportingPolicy.IGNORE)

public interface UsuarioMapeador {

    UsuarioSaidaDto usuarioToUsuarioDto(Usuario usuario);

    Usuario usuarioDtoToUsuario(UsuarioDto usuario);
}
