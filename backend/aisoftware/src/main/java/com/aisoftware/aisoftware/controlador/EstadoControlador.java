package com.aisoftware.aisoftware.controlador;

import com.aisoftware.aisoftware.dto.EstadoDto;
import com.aisoftware.aisoftware.entidade.Estado;
import com.aisoftware.aisoftware.mapeador.EstadoMapeador;
import com.aisoftware.aisoftware.repositorio.compra.EstadoJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("estado")
public class EstadoControlador {

    @Autowired
    private EstadoJpaRepository estadoJpaRepository;

    @Autowired
    private EstadoMapeador estadoMapeador;

    @GetMapping(path = "/lista")
    public List<EstadoDto> lista(){

        List<Estado> lista = estadoJpaRepository.findAll();

        return estadoMapeador.paraListaEstadoDto(lista);
    }
}
