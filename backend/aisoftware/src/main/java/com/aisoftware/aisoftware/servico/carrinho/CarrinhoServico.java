package com.aisoftware.aisoftware.servico.carrinho;

import com.aisoftware.aisoftware.entidade.*;
import com.aisoftware.aisoftware.repositorio.carrinho.CarrinhoJpaRepository;
import com.aisoftware.aisoftware.repositorio.carrinho.ItemCarrinhoJpaRepository;
import com.aisoftware.aisoftware.repositorio.item.ItemJpaRepository;
import com.aisoftware.aisoftware.repositorio.kit.KitJpaRepository;
import com.aisoftware.aisoftware.repositorio.usuario.UsuarioJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.ZonedDateTime;

@Service
@Transactional
public class CarrinhoServico implements ICarrinhoServico {

    @Autowired
    private UsuarioJpaRepository usuarioJpaRepository;

    @Autowired
    private CarrinhoJpaRepository carrinhoJpaRepository;

    @Autowired
    private KitJpaRepository kitJpaRepository;

    @Autowired
    private ItemCarrinhoJpaRepository itemCarrinhoJpaRepository;

    @Override
    public Carrinho obtemPorTokenUsuario(String token){
        Usuario usuario = usuarioJpaRepository.findByToken(token);

        if(usuario != null){
            return usuario.getCarrinho();
        }
        return null;
    }

    @Override
    public Carrinho adicionaKitCarrinho(Long idKit, Long idCarrinho){
        Carrinho carrinho = carrinhoJpaRepository.findById(idCarrinho).get();
        Kit kit = kitJpaRepository.findById(idKit).get();

        ItemCarrinho itemCarrinho = new ItemCarrinho();
        itemCarrinho.setDataAdicao(ZonedDateTime.now());
        itemCarrinho.setQuantidade(1);
        itemCarrinho.setKit(kit);
        itemCarrinho.setCarrinho(carrinho);
        itemCarrinho = itemCarrinhoJpaRepository.save(itemCarrinho);

        carrinho.getListaItemCarrinho().add(itemCarrinho);
        return carrinho;
    }
}
