package br.generation.introspring.atividade01.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Atividade01Controller {
	
	@RequestMapping("/springboot-lista01-atividade01")
	public String atividade01() {
		
		return "Intro a Spring Boot: Lista01 - Atividade 01 - Ana Oliveira: "
				+ "Utilizei muito as habilidades de persistência e atenção ao detalhe."
				+ "socorro mas tá tudo bem";
		
	}

}
