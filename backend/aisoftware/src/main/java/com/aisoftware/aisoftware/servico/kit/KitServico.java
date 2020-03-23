package com.aisoftware.aisoftware.servico.kit;

import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.repositorio.kit.KitJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.util.List;

@Service
@Transactional
public class KitServico implements IKitServico {

    @Autowired
    private KitJpaRepository kitJpaRepository;

    @Override
    public Page<Kit> lista(Long[] listaIdTipoKit, Long[] listaIdModeloItem, BigDecimal valorMinimo, BigDecimal valorMaximo, Pageable pagina) {
        return kitJpaRepository.lista(listaIdTipoKit, listaIdModeloItem, valorMinimo, valorMaximo, pagina);
    }

    @Override
    public List<Kit> listaPromocao(){
        return kitJpaRepository.listaPromocao();
    }

    @Override
    public Kit obtem(Long id) {
        return kitJpaRepository.findById(id).get();
    }
}
