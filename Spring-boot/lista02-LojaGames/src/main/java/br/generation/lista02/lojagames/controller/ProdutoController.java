package br.generation.lista02.lojagames.controller;

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

import br.generation.lista02.lojagames.model.Produto;
import br.generation.lista02.lojagames.repository.ProdutoRepository;

@RestController
@RequestMapping("/produtos")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ProdutoController {
	
	@Autowired
	private ProdutoRepository produtoRepository;
	
	@GetMapping("/todos")
	public ResponseEntity<List<Produto>> findAllProduto () {
		return ResponseEntity.ok(produtoRepository.findAll());
	}
	
	@GetMapping ("/{id}")
	public ResponseEntity<Produto> findByIdProduto (@PathVariable long id) {
		return produtoRepository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping ("/um/nome/{nome}") //Retorna apenas um resultado
	public ResponseEntity<Produto> findOneByNome (@PathVariable String nome) {
		return produtoRepository.findFirstByNomeContainingIgnoreCase(nome)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping ("/nome/{nome}") //Retorna lista de resultados
	public ResponseEntity<List<Produto>> findAllByNomeContainingIgnoreCase (@PathVariable String nome) {
		return ResponseEntity.ok(produtoRepository.findAllByNomeContainingIgnoreCase(nome));
	}
	
	@PostMapping
	public ResponseEntity<Produto> cadastrarProduto (@RequestBody Produto produto) {
		return ResponseEntity.status(HttpStatus.CREATED).body(produtoRepository.save(produto));
	}
	
	@PutMapping
	public ResponseEntity<Produto> alterarProduto (@RequestBody Produto produto) {
		return ResponseEntity.status(HttpStatus.OK).body(produtoRepository.save(produto));
	}
	
	@DeleteMapping ("/{id}")
	public void deleteById (@PathVariable long id) {
		produtoRepository.deleteById(id);
	}
	
	//Métodos extra que eu quis testar:
	
	@GetMapping ("/precomaior/{preco}") //busca por preço maior que
	public ResponseEntity<List<Produto>> buscaPrecoMaiorQue (@PathVariable double preco) {
		return ResponseEntity.ok(produtoRepository.findAllByPrecoGreaterThan(preco));
	}
	
	@GetMapping ("/precomenor/{preco}") //busca por preço menor que
	public ResponseEntity<List<Produto>> buscaPrecoMenorQue (@PathVariable double preco) {
		return ResponseEntity.ok(produtoRepository.findAllByPrecoLessThan(preco));
	}

}
