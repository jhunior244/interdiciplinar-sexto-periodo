package com.aisoftware.aisoftware.servico.usuario;

import com.aisoftware.aisoftware.dto.UsuarioDto;
import com.aisoftware.aisoftware.entidade.Carrinho;
import com.aisoftware.aisoftware.entidade.Usuario;
import com.aisoftware.aisoftware.repositorio.carrinho.CarrinhoJpaRepository;
import com.aisoftware.aisoftware.repositorio.usuario.UsuarioJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class UsuarioServico implements IUsuarioServico {

    @Autowired
    private UsuarioJpaRepository usuarioJpaRepository;

    @Autowired
    private CarrinhoJpaRepository carrinhoJpaRepository;

    @Override
    public boolean existeUsuarioCadastradoComEmail(String email){
        Usuario usuario = usuarioJpaRepository.findByEmail(email);

        return usuario != null ? true : false;
    }

    @Override
    public Usuario cria(Usuario usuario) throws Exception {
        Usuario usuarioBanco = usuarioJpaRepository.findByEmail(usuario.getEmail());
        if (usuarioBanco != null){
            throw new Exception("Email já existe");
        }
        usuario.setSenha(new BCryptPasswordEncoder().encode(usuario.getSenha()));
        Carrinho carrinho = new Carrinho();
        carrinho = carrinhoJpaRepository.save(carrinho);
        usuario.setCarrinho(carrinho);
        return usuarioJpaRepository.save(usuario);
    }


}
