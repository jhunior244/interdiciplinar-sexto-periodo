package com.aisoftware.aisoftware.servico.tipoItem;

import com.aisoftware.aisoftware.entidade.TipoItem;

import java.util.List;

public interface ITipoItemServico {

    List<TipoItem> listaPorTipoKit(Long id);
}
