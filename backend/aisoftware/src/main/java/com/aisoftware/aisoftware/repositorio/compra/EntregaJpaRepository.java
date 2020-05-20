package com.aisoftware.aisoftware.repositorio.compra;

import com.aisoftware.aisoftware.entidade.Carrinho;
import com.aisoftware.aisoftware.entidade.Entrega;
import com.aisoftware.aisoftware.repositorio.carrinho.CarrinhoJpaRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface EntregaJpaRepository extends JpaRepository<Entrega, Long>, CarrinhoJpaRepositoryCustom, PagingAndSortingRepository<Entrega, Long> {
}
