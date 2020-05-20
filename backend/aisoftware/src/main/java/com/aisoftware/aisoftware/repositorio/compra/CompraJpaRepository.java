package com.aisoftware.aisoftware.repositorio.compra;

import com.aisoftware.aisoftware.entidade.Compra;
import com.aisoftware.aisoftware.entidade.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface CompraJpaRepository extends JpaRepository<Compra, Long>, CompraJpaRepositoryCustom, PagingAndSortingRepository<Compra, Long> {
}
