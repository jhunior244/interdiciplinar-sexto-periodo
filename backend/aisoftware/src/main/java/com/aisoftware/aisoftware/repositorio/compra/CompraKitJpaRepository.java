package com.aisoftware.aisoftware.repositorio.compra;

import com.aisoftware.aisoftware.entidade.CompraKit;
import com.aisoftware.aisoftware.repositorio.carrinho.CarrinhoJpaRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface CompraKitJpaRepository extends JpaRepository<CompraKit, Long>, CarrinhoJpaRepositoryCustom, PagingAndSortingRepository<CompraKit, Long> {
}
