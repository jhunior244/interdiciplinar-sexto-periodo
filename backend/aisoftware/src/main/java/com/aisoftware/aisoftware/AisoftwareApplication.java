package com.aisoftware.aisoftware;

import com.aisoftware.aisoftware.config.security.AutenticacaoService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.orm.jpa.support.OpenEntityManagerInViewFilter;
import com.querydsl.jpa.impl.JPAQueryFactory;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@SpringBootApplication
@EntityScan(basePackageClasses = {AisoftwareApplication.class})
@ComponentScan(basePackages = "com.aisoftware.aisoftware.controlador")
@ComponentScan(basePackages = "com.aisoftware.aisoftware.servico")
@ComponentScan(basePackages = "com.aisoftware.aisoftware.repositorio")
@ComponentScan(basePackages = "com.aisoftware.aisoftware.mapeador")
@ComponentScan(basePackages = "com.aisoftware.aisoftware.config")
@ComponentScan(basePackages = "com.aisoftware.aisoftware.config.security")
public class
AisoftwareApplication {

	@PersistenceContext
	private EntityManager em;

	public static void main(String[] args) {
		SpringApplication.run(AisoftwareApplication.class, args);
	}

	@Bean
	public OpenEntityManagerInViewFilter openEntityManagerInViewFilter() {
		return new OpenEntityManagerInViewFilter();
	}


	@Bean
	public JPAQueryFactory jpaQueryFactory() {
		return new JPAQueryFactory(em);
	}

}
