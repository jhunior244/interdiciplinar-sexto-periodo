package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.CarrinhoDto;
import com.aisoftware.aisoftware.dto.CompraDto;
import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.dto.UsuarioDto;
import com.aisoftware.aisoftware.mapeador.CarrinhoMapeador;
import com.aisoftware.aisoftware.mapeador.CompraMapeador;
import com.aisoftware.aisoftware.servico.compra.ICompraServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("compra")
public class CompraControlador {

    @Autowired
    private ICompraServico compraServico;

    @Autowired
    private CarrinhoMapeador carrinhoMapeador;

    @Autowired
    private CompraMapeador compraMapeador;

    @GetMapping(path = "/efetuarCompra")
    public CompraDto efetuarCompra(Long idCarrinho,
                                   String logradouro,
                                   Long numero,
                                   String bairro,
                                   String cep,
                                   String cidade,
                                   String numeroCartao,
                                   String codigoSeguranca,
                                   Long idEstado){

        return compraMapeador.compraToCompraDto(compraServico.efetuarCompra(
                idCarrinho, logradouro, numero, bairro, cep, cidade, numeroCartao, codigoSeguranca, idEstado
        ));
    }

}
