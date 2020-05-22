package com.aisoftware.aisoftware.repositorio.compra;

import com.aisoftware.aisoftware.entidade.Entrega;
import com.aisoftware.aisoftware.entidade.Estado;
import com.aisoftware.aisoftware.repositorio.carrinho.CarrinhoJpaRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface EstadoJpaRepository extends JpaRepository<Estado, Long>, CarrinhoJpaRepositoryCustom, PagingAndSortingRepository<Estado, Long> {
}
