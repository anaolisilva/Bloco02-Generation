package br.generation.farmacia.controller;

import java.util.List;

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

import br.generation.farmacia.model.Produto;
import br.generation.farmacia.repository.ProdutoRepository;

@RestController
@RequestMapping("/produto")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ProdutoController {
	
	@Autowired
	private ProdutoRepository produtorepository;
	
	@GetMapping
	public ResponseEntity<List<Produto>> findAllProduto () {
		return ResponseEntity.ok(produtorepository.findAll());
	}
	
	@GetMapping ("/{id}")
	public ResponseEntity<Produto> findByIdProduto (@PathVariable long id) {
		return produtorepository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping ("/nome/{nome}")
	public ResponseEntity<List<Produto>> findAllByNomeContainingIgnoreCase (@PathVariable String nome) {
		return ResponseEntity.ok(produtorepository.findAllByNomeContainingIgnoreCase(nome));
	}
	
	@GetMapping ("/um/nome/{nome}")
	public ResponseEntity<Produto> findOneByNome (@PathVariable String nome) {
		return produtorepository.findFirstByNomeContainingIgnoreCase(nome)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@PostMapping
	public ResponseEntity<Produto> cadastrarProduto (@RequestBody Produto produto) {
		return ResponseEntity.status(HttpStatus.CREATED).body(produtorepository.save(produto));
	}
	
	@PutMapping
	public ResponseEntity<Produto> alterarProduto (@RequestBody Produto produto) {
		return ResponseEntity.status(HttpStatus.OK).body(produtorepository.save(produto));
	}
	
	@DeleteMapping ("/{id}")
	public void deleteById (@PathVariable long id) {
		produtorepository.deleteById(id);
	}
	
	

}
