package br.generation.lista02.lojagames.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import br.generation.lista02.lojagames.model.Categoria;
import br.generation.lista02.lojagames.repository.CategoriaRepository;

@RestController
@RequestMapping("/categorias")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CategoriaController {
	
	@Autowired
	private CategoriaRepository categoriaRepository;
	
	@GetMapping
	public ResponseEntity<List<Categoria>> findAllCategoria () {
		return ResponseEntity.ok(categoriaRepository.findAll());
	}
		
	
	@GetMapping("/{id}")
	public ResponseEntity<Categoria> findByIDCategoria (@PathVariable long id){
		return categoriaRepository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping ("/descricao/{descricao}")
	public ResponseEntity<List<Categoria>> findAllByDescricaoContainingIgnoreCase(@PathVariable String descricao){
		return ResponseEntity.ok(categoriaRepository.findAllByDescricaoContainingIgnoreCase(descricao));
	}
	
	@PostMapping
	public ResponseEntity<Categoria> cadastrarCategoria (@RequestBody Categoria categoria) {
		return ResponseEntity.status(HttpStatus.CREATED).body(categoriaRepository.save(categoria));
	}
	
	@PutMapping
	public ResponseEntity<Categoria> alterarCategoria (@RequestBody Categoria categoria) {
		return ResponseEntity.ok(categoriaRepository.save(categoria));
	} 
	
	
	@DeleteMapping ("/{id}")
	public void deleteById (@PathVariable long id) {
		Optional<Categoria> produto = categoriaRepository.findById(id);
		
		if (produto.isPresent()) {
			categoriaRepository.deleteById(id);
		} else {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "O id que voc?? digitou n??o existe!");
		} //ResponseStatusException faz parte da classe de excess??es do spring. ?? poss??vel criarmos uma classe com ele e fazer respostas padr??es de erros para serem chamados em outros locais.
		//Procurar mais sobre esse HttpStatus.
	}
	

}
