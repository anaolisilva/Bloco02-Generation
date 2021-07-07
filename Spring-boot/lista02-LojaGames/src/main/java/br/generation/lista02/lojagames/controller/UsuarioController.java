package br.generation.lista02.lojagames.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.generation.lista02.lojagames.model.Usuario;
import br.generation.lista02.lojagames.model.UsuarioLogin;
import br.generation.lista02.lojagames.repository.UsuarioRepository;
import br.generation.lista02.lojagames.service.UsuarioService;

@RestController
@RequestMapping("/usuarios")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class UsuarioController {
	
	@Autowired 	private UsuarioRepository repository;
	
	@Autowired 	private UsuarioService service;
	
	@PostMapping("/login")
	public ResponseEntity<UsuarioLogin> Login (@RequestBody Optional<UsuarioLogin> usuario) {
		return service.logarUsuario(usuario)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.status(HttpStatus.UNAUTHORIZED).build());
	}
	
	@PostMapping("/cadastrar")
	public ResponseEntity<Usuario> cadastrarUsuario (@RequestBody Usuario usuario){
		Optional<Usuario> novoUsuario = service.cadastrarUsuario(usuario);
		try {
			return ResponseEntity.ok(novoUsuario.get());
		}catch (Exception e) {
			return ResponseEntity.badRequest().build();
		}		
	}
	
	@GetMapping("/todos")
	public ResponseEntity<List<Usuario>> getTodos () {
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Usuario> getUsuarioById (@PathVariable long id) {
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@PutMapping("/alterar")
	public ResponseEntity<Usuario> alterarUsuario (@RequestBody Usuario usuario) {
		Optional<Usuario> updateUsuario = service.alterarUsuario(usuario);
		try {
			return ResponseEntity.ok(updateUsuario.get());
		} catch (Exception e) {
			return ResponseEntity.badRequest().build();
		}
	}

}
