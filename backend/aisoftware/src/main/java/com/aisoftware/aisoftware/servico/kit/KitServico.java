package com.aisoftware.aisoftware.servico.kit;

import com.aisoftware.aisoftware.entidade.Item;
import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.repositorio.kit.KitJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class KitServico implements IKitServico {

    @Autowired
    private KitJpaRepository kitJpaRepository;

    @Override
    public List<Kit> lista() {

        return kitJpaRepository.lista(null, null, null);
    }
}
