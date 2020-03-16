package com.aisoftware.aisoftware.servico.tipoItem;

import com.aisoftware.aisoftware.entidade.TipoItem;
import com.aisoftware.aisoftware.repositorio.tipoItem.TipoItemJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TipoItemServico implements ITipoItemServico {

    @Autowired
    private TipoItemJpaRepository tipoItemJpaRepository;

    public List<TipoItem> lista(){
        return tipoItemJpaRepository.findAll();
    }
}
