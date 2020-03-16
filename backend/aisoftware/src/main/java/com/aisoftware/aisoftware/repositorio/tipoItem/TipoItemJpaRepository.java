package com.aisoftware.aisoftware.repositorio.tipoItem;

import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.entidade.TipoItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface TipoItemJpaRepository extends JpaRepository<TipoItem, Long>, TipoItemJpaRepositoryCustom, PagingAndSortingRepository<TipoItem, Long> {
}
