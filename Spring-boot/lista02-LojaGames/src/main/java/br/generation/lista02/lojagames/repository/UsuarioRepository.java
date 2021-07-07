package br.generation.lista02.lojagames.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import br.generation.lista02.lojagames.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
	
	public Optional<Usuario> findByEmail (String email);

}
