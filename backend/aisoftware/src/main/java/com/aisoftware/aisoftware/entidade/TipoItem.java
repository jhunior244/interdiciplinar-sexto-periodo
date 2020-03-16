package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class TipoItem {
    public enum Valores {
        PROCESSADOR(1, "Processador"),
        MEMORIA_RAM(2, "Memoria RAM"),
        SSD(3, "SSD"),
        HD(4, "HD"),
        PLACA_MAE(5, "Placa Mãe"),
        FONTE(6, "Fonte");

        private long id;
        private String nome;

        Valores(int id, String nome) {
            this.nome = nome;
            this.id = id;
        }

        public long obtemId() {
            return this.id;
        }
    }


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String nome;

    @OneToMany(mappedBy = "tipoItem")
    private List<ModeloItem> listaModeloItem;

}
