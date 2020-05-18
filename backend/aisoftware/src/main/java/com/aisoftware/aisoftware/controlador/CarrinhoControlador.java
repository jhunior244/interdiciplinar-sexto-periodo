package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.CarrinhoDto;
import com.aisoftware.aisoftware.mapeador.CarrinhoMapeador;
import com.aisoftware.aisoftware.servico.carrinho.CarrinhoServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("carrinho")
public class CarrinhoControlador {

    @Autowired
    private CarrinhoMapeador carrinhoMapeador;

    @Autowired
    private CarrinhoServico carrinhoServico;

    @GetMapping(path = "/obtem")
    public CarrinhoDto obtem(String token){

        CarrinhoDto carrinhoDto = carrinhoMapeador.carrinhoToCarrinhoDto(carrinhoServico.obtemPorTokenUsuario(token));
        return carrinhoDto;
    }

    @GetMapping(path = "/adicionaKitCarrinho")
    public CarrinhoDto adicionaKitCarrinho(Long idKit, Long idCarrinho){

        CarrinhoDto carrinhoDto = carrinhoMapeador.carrinhoToCarrinhoDto(carrinhoServico.adicionaKitCarrinho(idKit, idCarrinho));
        return carrinhoDto;
    }
}
