package br.generation.lista02.lojagames.service;

import java.nio.charset.Charset;
import java.time.LocalDate;
import java.time.Period;
import java.util.Optional;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import br.generation.lista02.lojagames.model.Usuario;
import br.generation.lista02.lojagames.model.UsuarioLogin;
import br.generation.lista02.lojagames.repository.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository repository;
	
	//Confere se o e-mail cadastrado já existe no sistema e se o usuário é maior de 18 anos.
	
	public Optional<Usuario> cadastrarUsuario(Usuario usuario) {

		if (repository.findByEmail(usuario.getEmail()).isPresent())
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "E-mail já cadastrado!", null);

		int idade = Period.between(usuario.getDataNascimento(), LocalDate.now()).getYears();

		if (idade < 18)
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Usuário menor de idade!", null);

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		String senhaEncoder = encoder.encode(usuario.getSenha());

		usuario.setSenha(senhaEncoder);

		return Optional.of(repository.save(usuario));
	}
	
	
	public Optional<Usuario> alterarUsuario(Usuario usuario){
		
		if (repository.findByEmail(usuario.getEmail()).isPresent()) {

		int idade = Period.between(usuario.getDataNascimento(), LocalDate.now()).getYears();

		if (idade < 18)
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Usuário não pode ser menor de idade!", null);

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		String senhaEncoder = encoder.encode(usuario.getSenha());

		usuario.setSenha(senhaEncoder);

		return Optional.of(repository.save(usuario));
		
		} else {
			throw new ResponseStatusException(
					HttpStatus.NOT_FOUND, "Usuário não encontrado!", null);
		}
		
	}
	
	//Além de logar retorna uma mensagem de bem-vindo.
	
	public Optional<UsuarioLogin> logarUsuario (Optional<UsuarioLogin> login) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		Optional<Usuario> usuario = repository.findByEmail(login.get().getEmail());
		
		if(usuario.isPresent()) {
			if(encoder.matches(login.get().getSenha(), usuario.get().getSenha())) {
				
				String auth = login.get().getEmail() + ":" + login.get().getSenha();
				byte[] encodedAuth = Base64.encodeBase64(auth.getBytes(Charset.forName("US-ASCII")));
				String authHeader = "Basic " + new String(encodedAuth);
				
				login.get().setToken(authHeader);

				login.get().setNome(usuario.get().getNome());
				
				login.get().setMensagem("Bem-vinde ao sistema, " + login.get().getNome() + "!");
				
				return login;
			}
		}
		
		return null;
	}
	
	

}
