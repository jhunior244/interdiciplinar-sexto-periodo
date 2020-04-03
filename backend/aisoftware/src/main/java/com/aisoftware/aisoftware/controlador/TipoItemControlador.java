package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.KitDto;
import com.aisoftware.aisoftware.dto.TipoItemDto;
import com.aisoftware.aisoftware.mapeador.TipoItemMapeador;
import com.aisoftware.aisoftware.servico.tipoItem.TipoItemServico;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("tipoItem")
public class TipoItemControlador {

    @Autowired
    private TipoItemServico tipoItemServico;

    @Autowired
    private TipoItemMapeador tipoItemMapeador;

    @GetMapping(path = "/lista")
    public List<TipoItemDto> listaPromocao(Long idTipoKit){
        return tipoItemMapeador.listToListDto(tipoItemServico.listaPorTipoKit(idTipoKit));
    }
}
