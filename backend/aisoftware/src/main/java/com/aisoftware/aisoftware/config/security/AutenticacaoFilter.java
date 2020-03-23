package com.aisoftware.aisoftware.config.security;

import com.aisoftware.aisoftware.entidade.Usuario;
import com.aisoftware.aisoftware.repositorio.usuario.UsuarioJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AutenticacaoFilter extends OncePerRequestFilter {

    private TokenService tokenService;
    private UsuarioJpaRepository usuarioJpaRepository;

    public AutenticacaoFilter(TokenService tokenService, UsuarioJpaRepository usuarioJpaRepository){
        this.tokenService = tokenService;
        this.usuarioJpaRepository = usuarioJpaRepository;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {

//        final String origin = "http://localhost:4200";
//
//        httpServletResponse.addHeader("Access-Control-Allow-Origin", origin);
//        httpServletResponse.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
//        httpServletResponse.setHeader("Access-Control-Allow-Credentials", "true");
//        httpServletResponse.setHeader("Access-Control-Allow-Headers",
//                "content-type, x-gwt-module-base, x-gwt-permutation, clientid, longpush");

        String token = recuperarToken(httpServletRequest);
        boolean valido = tokenService.isTokenValido(token);
        if(valido){
            autenticarCliente(token);
        }
        filterChain.doFilter(httpServletRequest, httpServletResponse);
    }

    private void autenticarCliente(String token) {
        Long idUsuario = tokenService.getIdUsuario(token);
        Usuario usuario = usuarioJpaRepository.findById(idUsuario).get();
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(usuario, null, usuario.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authentication);
    }

    private String recuperarToken(HttpServletRequest httpServletRequest) {
        String token = httpServletRequest.getHeader("Authorization");
        if(token == null || token.isEmpty() || !token.startsWith("Bearer ")){
            return null;
        }

        return token.substring(7);
    }
}
