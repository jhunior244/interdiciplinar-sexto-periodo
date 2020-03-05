package com.aisoftware.aisoftware.entidade;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class TipoKit {
    public enum Valores {
        COMPUTADOR(1, "Computador"),
        NOTEBOOK(2, "Notebook");

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
