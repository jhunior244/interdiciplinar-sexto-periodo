package com.aisoftware.aisoftware.repositorio.kit;

import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.entidade.Kit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface KitJpaRepository extends JpaRepository<Kit, Long>, KitJpaRepositoryCustom, PagingAndSortingRepository<Kit, Long> {
}
