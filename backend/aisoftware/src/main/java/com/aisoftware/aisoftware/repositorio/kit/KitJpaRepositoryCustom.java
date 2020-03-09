package com.aisoftware.aisoftware.repositorio.kit;

import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.entidade.TipoKit;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface KitJpaRepositoryCustom {

    Page<Kit> lista(Long[] listaIdTipoKit, BigDecimal valorMinimo, BigDecimal valorMaximo, Pageable pagina);

    List<Kit> listaPromocao();
}
