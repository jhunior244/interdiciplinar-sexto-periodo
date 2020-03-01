package com.aisoftware.aisoftware.repositorio.kit;

import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.entidade.TipoKit;

import java.math.BigDecimal;
import java.util.List;

public interface KitJpaRepositoryCustom {

    List<Kit> lista(
            List<Long> listaIdTipoKit,
            BigDecimal valorMinimo,
            BigDecimal valorMaximo
    );
}
