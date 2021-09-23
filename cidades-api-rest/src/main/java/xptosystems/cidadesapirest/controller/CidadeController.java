package xptosystems.cidadesapirest.controller;

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
	
	@RequestMapping(value = "/api/cidade/{ibge_id}", method = RequestMethod.GET)
	public ResponseEntity consultar(@PathVariable("ibge_id") String ibge_id) {
		
		return repository.findById(ibge_id)
				.map(record -> ResponseEntity.ok().body(record))
				.orElse(ResponseEntity.notFound().build());
		
	}
	
	@RequestMapping(value = "/api/cidade/adicionar", method = RequestMethod.POST)
	public CidadeModelo adicionar(@RequestBody CidadeModelo cidade) {
		
		return repository.save(cidade);
		
	}
	
}