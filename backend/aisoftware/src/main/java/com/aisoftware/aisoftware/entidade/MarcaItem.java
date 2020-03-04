package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class MarcaItem {

    public enum Valores {
        PROCESSADOR(1, "ASUS"),
        MEMORIA_RAM(2, "AMD"),
        SSD(3, "INTEL"),
        HD(4, "HP"),
        PLACA_MAE(5, "DELL");

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
}


