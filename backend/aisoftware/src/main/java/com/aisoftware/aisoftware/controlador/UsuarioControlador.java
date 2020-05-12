package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.UsuarioDto;
import com.aisoftware.aisoftware.mapeador.UsuarioMapeador;
import com.aisoftware.aisoftware.servico.usuario.UsuarioServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("usuario")
public class UsuarioControlador {

    @Autowired
    private UsuarioServico usuarioServico;

    @Autowired
    private UsuarioMapeador usuarioMapeador;

    @GetMapping(path = "existeUsuarioCadastradoComEmail")
    public boolean existeUsuarioCadastradoComEmail(String email){
        return usuarioServico.existeUsuarioCadastradoComEmail(email);
    }

    @PostMapping(path = "/cria")
    public void cria(@RequestBody UsuarioDto usuarioDto) throws Exception {
        usuarioServico.cria(usuarioMapeador.usuarioDtoToUsuario(usuarioDto));
    }
}
