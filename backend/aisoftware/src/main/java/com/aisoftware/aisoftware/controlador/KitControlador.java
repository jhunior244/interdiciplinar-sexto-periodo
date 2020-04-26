package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.ItemDto;
import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.mapeador.KitMapeador;
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
    public KitDto obtem(Long id){

        return kitMapeador.kitToKitDto(kitServico.obtem(id));
    }

    @GetMapping(path = "/lista")
    public Page<KitDto> lista(Long[] listaIdTipoKit, Long[] listaIdModeloItem, BigDecimal valorMinimo, BigDecimal valorMaximo,
                           Long numeroPagina, Long tamanhoPagina){
        if(numeroPagina == null || tamanhoPagina == null){
            numeroPagina = 0L;
            tamanhoPagina = 10L;
        }

        Pageable pagina = PageRequest.of(numeroPagina.intValue(), tamanhoPagina.intValue());

        Page<KitDto> page = kitMapeador.kitToKitDto(kitServico.lista(listaIdTipoKit,listaIdModeloItem, valorMinimo, valorMaximo, pagina));

        return page;
    }

    @GetMapping(path = "/listaPromocao")
    public List<KitDto> listaPromocao(){
        return kitMapeador.listToListDto(kitServico.listaPromocao());
    }

}
