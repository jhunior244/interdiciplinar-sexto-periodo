package com.aisoftware.aisoftware.servico.compra;

import com.aisoftware.aisoftware.entidade.*;
import com.aisoftware.aisoftware.repositorio.carrinho.CarrinhoJpaRepository;
import com.aisoftware.aisoftware.repositorio.carrinho.ItemCarrinhoJpaRepository;
import com.aisoftware.aisoftware.repositorio.compra.CompraJpaRepository;
import com.aisoftware.aisoftware.repositorio.compra.CompraKitJpaRepository;
import com.aisoftware.aisoftware.repositorio.compra.EntregaJpaRepository;
import com.aisoftware.aisoftware.repositorio.kit.KitJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.stream.Collectors;

@Service
@Transactional
public class CompraServico implements ICompraServico{

    @Autowired
    private CompraJpaRepository compraJpaRepository;

    @Autowired
    private KitJpaRepository kitJpaRepository;

    @Autowired
    private ItemCarrinhoJpaRepository itemCarrinhoJpaRepository;

    @Autowired
    private CarrinhoJpaRepository carrinhoJpaRepository;

    @Autowired
    private EntregaJpaRepository entregaJpaRepository;

    @Autowired
    private CompraKitJpaRepository compraKitJpaRepository;
    @Override
    public Compra efetuarCompra(Long idCarrinho, String logradouro, Long numero, String bairro, String cep, String cidade, String numeroCartao, String codigoSeguranca) {

        Carrinho carrinho = carrinhoJpaRepository.findById(idCarrinho).get();
        Compra compra = new Compra();
        compra.setTotalCompra(calculaTotalCompra(carrinho));
        compra.setUsuario(carrinho.getUsuario());
        compra.setData(ZonedDateTime.now());
        compra.setEntrega(criaEntrega(
                logradouro, numero, bairro, cep, cidade
        ));

        compra = compraJpaRepository.save(compra);
        carrinhoJpaRepository.save(carrinho);

        compraJpaRepository.save(compra);
        criaCompraKit(compra, carrinho);

        return compra;
    }

    private BigDecimal calculaTotalCompra(Carrinho carrinho){

        BigDecimal totalCompra = BigDecimal.ZERO;
        for(ItemCarrinho itemCarrinho : carrinho.getListaItemCarrinho()){

            if(itemCarrinho.getQuantidade() <= itemCarrinho.getKit().getQuantidadeEstoque()){

                totalCompra = totalCompra.add(itemCarrinho.getKit().getPreco().multiply(new BigDecimal(itemCarrinho.getQuantidade())));

                itemCarrinho.getKit().setQuantidadeEstoque(
                        itemCarrinho.getKit().getQuantidadeEstoque() - itemCarrinho.getQuantidade()
                );

                kitJpaRepository.save(itemCarrinho.getKit());
                itemCarrinhoJpaRepository.delete(itemCarrinho);
            }
        }
        return totalCompra;
    }

    private void criaCompraKit(Compra compra, Carrinho carrinho){

        for(ItemCarrinho itemCarrinho : carrinho.getListaItemCarrinho()){
            if(itemCarrinho.getKit().getQuantidadeEstoque() == 0){
                continue;
            }
            CompraKit compraKit = new CompraKit();
            compraKit.setCompra(compra);
            compraKit.setKit(itemCarrinho.getKit());
            compraKit.setPreco(itemCarrinho.getKit().getPreco());
            compraKit.setQuantidade(itemCarrinho.getQuantidade());
            compraKitJpaRepository.save(compraKit);
        }
    }

    private Entrega criaEntrega(String logradouro, Long numero, String bairro, String cep, String cidade){

        Entrega entrega = new Entrega();

        entrega.setRua(logradouro);
        entrega.setNumero(numero.intValue());
        entrega.setBairro(bairro);
        entrega.setCep(cep);
        entrega.setCidade(cidade);

        return entregaJpaRepository.save(entrega);
    }

}
