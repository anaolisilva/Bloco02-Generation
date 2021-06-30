package br.generation.projetointegrador.lojagames.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.generation.projetointegrador.lojagames.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long>{
	
	public List<Produto> findAllByNomeContainingIgnoreCase(String nome);
	
	public Optional<Produto> findFirstByNomeContainingIgnoreCase(String nome);
	
	public List<Produto> findAllByPrecoGreaterThan (double preco);
	
	public List<Produto> findAllByPrecoLessThan (double preco);

}
