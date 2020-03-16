package com.aisoftware.aisoftware.servico.kit;

import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.entidade.Kit;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.math.BigDecimal;
import java.util.List;

public interface IKitServico {

    Page<Kit> lista(Long[] listaIdTipoKit, Long[] listaIdModeloItem, BigDecimal valorMinimo, BigDecimal valorMaximo, Pageable pagina);

    List<Kit> listaPromocao();
}
