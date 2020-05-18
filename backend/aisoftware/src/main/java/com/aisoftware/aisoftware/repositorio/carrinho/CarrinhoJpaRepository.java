package com.aisoftware.aisoftware.repositorio.carrinho;

import com.aisoftware.aisoftware.entidade.Carrinho;
import com.aisoftware.aisoftware.entidade.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface CarrinhoJpaRepository extends JpaRepository<Carrinho, Long>, CarrinhoJpaRepositoryCustom, PagingAndSortingRepository<Carrinho, Long> {
}
