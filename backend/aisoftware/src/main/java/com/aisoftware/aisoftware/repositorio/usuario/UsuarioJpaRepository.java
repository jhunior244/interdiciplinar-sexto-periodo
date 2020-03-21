package com.aisoftware.aisoftware.repositorio.usuario;

import com.aisoftware.aisoftware.entidade.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioJpaRepository extends JpaRepository<Usuario, Long> {
    Usuario findByEmail(String email);
}
