package com.aisoftware.aisoftware.repositorio.carrinho;

import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.entidade.ItemCarrinho;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ItemCarrinhoJpaRepository extends JpaRepository<ItemCarrinho, Long>, ItemCarrinhoJpaRepositoryCustom, PagingAndSortingRepository<ItemCarrinho, Long> {
}
