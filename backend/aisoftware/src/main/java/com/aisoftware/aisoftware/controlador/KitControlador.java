package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.ItemDto;
import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.entidade.Kit;
import com.aisoftware.aisoftware.mapeador.ItemMapeador;
import com.aisoftware.aisoftware.mapeador.KitMapeador;
import com.aisoftware.aisoftware.servico.item.IItemServico;
import com.aisoftware.aisoftware.servico.kit.IKitServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("produtos")
public class KitControlador {

    @Autowired
    private IKitServico kitServico;

    @Autowired
    private KitMapeador kitMapeador;

    @PostMapping(path = "/cria")
    public ItemDto cria(@RequestBody ItemDto itemDto) {
        return null;
    }

    @GetMapping(path = "/obtem")
    public ItemDto obtem(Long id){
        return null;
    }

    @GetMapping(path = "/lista")
    public List<KitDto> lista(BigDecimal valorMinimo, BigDecimal valorMaximo,
                           Long numeroPagina, Long tamanhoPagina){
        if(numeroPagina == null || tamanhoPagina == null){
            numeroPagina = 0L;
            tamanhoPagina = 10L;
        }

        Pageable pagina = PageRequest.of(numeroPagina.intValue(), tamanhoPagina.intValue());

        List<KitDto> page = kitMapeador.listToListDto(kitServico.lista());

        return page;
    }

}
