package br.generation.introspring.atividade02.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Atividade02Controller {
	
	@RequestMapping("/springboot-lista01-atividade02")
	public String atividade02 () {
		return "Intro a Spring Boot: Lista01 - Atividade 02 - Ana Oliveira: "
				+ "Meus objetivos de aprendizagem dessa semana são conseguir compreender o que significam as diferentes arquiteturas que vimos hoje"
				+ " e ser introduzida ao Spring Boot de maneira suave.";
	}

}
