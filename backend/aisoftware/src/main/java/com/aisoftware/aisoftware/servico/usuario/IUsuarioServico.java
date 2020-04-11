package com.aisoftware.aisoftware.servico.usuario;

import com.aisoftware.aisoftware.entidade.TipoItem;
import com.aisoftware.aisoftware.entidade.Usuario;

import java.util.List;

public interface IUsuarioServico {

    boolean existeUsuarioCadastradoComEmail(String email);

    Usuario cria(Usuario usuario) throws Exception;
}
