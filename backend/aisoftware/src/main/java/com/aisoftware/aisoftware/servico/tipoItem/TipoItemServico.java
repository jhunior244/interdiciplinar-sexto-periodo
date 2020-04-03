package com.aisoftware.aisoftware.servico.tipoItem;

import com.aisoftware.aisoftware.entidade.ModeloItem;
import com.aisoftware.aisoftware.entidade.TipoItem;
import com.aisoftware.aisoftware.repositorio.tipoItem.TipoItemJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class TipoItemServico implements ITipoItemServico {

    @Autowired
    private TipoItemJpaRepository tipoItemJpaRepository;

    @Override
    public List<TipoItem> listaPorTipoKit(Long id){
        List<TipoItem> lista = tipoItemJpaRepository.findAll();

        List<TipoItem> listaComFiltro = new ArrayList<>();

        for(TipoItem tp: lista){
            List<ModeloItem> listaModelo = tp.getListaModeloItem().stream()
                    .filter(modeloItem -> modeloItem.getTipoKit().getId().equals(id)).collect(Collectors.toList());

            TipoItem tipoItem = new TipoItem();
            tipoItem.setListaModeloItem(listaModelo);
            tipoItem.setNome(tp.getNome());
            if(!CollectionUtils.isEmpty(tipoItem.getListaModeloItem())){
                listaComFiltro.add(tipoItem);
            }
        }

        return listaComFiltro;
    }
}
