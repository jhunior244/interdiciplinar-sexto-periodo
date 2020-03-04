package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class MarcaItem {

    public enum Valores {
        ASUS(1, "Asus"),
        AMD(2, "AMD"),
        INTEL(3, "Intel"),
        KINGSTON(4, "Kingston"),
        GIGABYTE(5, "Gigabyte");

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


