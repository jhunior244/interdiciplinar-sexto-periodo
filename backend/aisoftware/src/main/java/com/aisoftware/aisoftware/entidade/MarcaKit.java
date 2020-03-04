package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class MarcaKit {
    public enum Valores {
        DELL(1, "Dell"),
        HP(2, "HP"),
        LENOVO(3, "Lenovo"),
        APPLE(4, "Apple"),
        ACER(5, "Acer"),
        LG(7,"LG");

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
