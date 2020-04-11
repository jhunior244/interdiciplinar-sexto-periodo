package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.TokenDto;
import com.aisoftware.aisoftware.dto.UsuarioDto;
import com.aisoftware.aisoftware.config.security.TokenService;
import com.aisoftware.aisoftware.entidade.Usuario;
import com.aisoftware.aisoftware.repositorio.usuario.UsuarioJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("auth")
public class AutenticacaoControlador {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private UsuarioJpaRepository usuarioJpaRepository;

    @PostMapping(path = "/login")
    public ResponseEntity<UsuarioDto> logar(@RequestBody UsuarioDto usuario){
        UsernamePasswordAuthenticationToken dadosLogin = usuario.converter();

        try {
            Authentication authentication = authenticationManager.authenticate(dadosLogin);
            String token = tokenService.gerarToken(authentication);
            Usuario usuarioLogado = usuarioJpaRepository.findByEmail(usuario.getEmail());
            UsuarioDto usuarioDto = new UsuarioDto();
            usuarioDto.setNome(usuarioLogado.getNome());
            usuario.setEmail(usuarioLogado.getEmail());
            usuarioDto.setToken("Bearer " + token);
            return ResponseEntity.ok(usuarioDto);
        } catch (AuthenticationException e){
            throw new UsernameNotFoundException("Dados inválidos");
        }
    }
}
