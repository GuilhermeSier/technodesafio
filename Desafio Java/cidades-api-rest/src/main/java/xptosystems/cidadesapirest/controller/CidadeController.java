package xptosystems.cidadesapirest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import xptosystems.cidadesapirest.crudrepository.CidadeRepositorio;
import xptosystems.cidadesapirest.modelo.CidadeModelo;

@RestController
public class CidadeController {

	@Autowired
	private CidadeRepositorio repository;
	
	@GetMapping(path = "/api/cidade/{ibge_id}")
	public ResponseEntity consultar(@PathVariable("ibge_id") String ibge_id) {
		
		return repository.findById(ibge_id)
				.map(record -> ResponseEntity.ok().body(record))
				.orElse(ResponseEntity.notFound().build());
		
	}
	
	@PostMapping(path = "/api/cidade/adicionar")
	public CidadeModelo adicionar(@RequestBody CidadeModelo cidade) {
		
		return repository.save(cidade);
		
	}

	@PostMapping(path = "/api/cidade/adicionartodos")
	public List<CidadeModelo> adicionartodos(@RequestBody List<CidadeModelo> listacidades) {
		
		return (List<CidadeModelo>) repository.saveAll(listacidades);
		
	}
	
	@GetMapping(path = "/api/cidade/deletar/{ibge_id}")
	public void deletar(@PathVariable("ibge_id") String ibge_id) {
		
		repository.deleteById(ibge_id);
		
	}
	
	@GetMapping(path = "/api/cidade/mostrartodos")
	public Iterable<CidadeModelo> mostrarTodos() {
		
		return repository.findAll();
		
	}
	
	@GetMapping(path = "/api/cidade/deletartodos")
	public void deletartodos() {
		
		repository.deleteAll();
		
	}
	
	@GetMapping(path = "/api/quantascidades")
	public long quantasCidades() {
		
		return repository.count();
		
	}
	
	@GetMapping(path = "/api/buscaporestado/{uf}")
	public Iterable<CidadeModelo> buscaPorEstado(@PathVariable("uf") Iterable<String> uf) {
		
		return repository.findAllById(uf);
		
	}
	
}