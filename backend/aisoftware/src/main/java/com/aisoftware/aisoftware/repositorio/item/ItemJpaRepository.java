package com.aisoftware.aisoftware.repositorio.item;

import com.aisoftware.aisoftware.entidade.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ItemJpaRepository extends JpaRepository<Item, Long>, ItemJpaRepositoryCustom, PagingAndSortingRepository<Item, Long> {
}
