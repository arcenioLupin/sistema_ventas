package com.pe.ventas.back.daos.libros.config;

import java.util.Arrays;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.pe.ventas.back.daos.libros.impl.LibroDao;
import com.pe.ventas.back.daos.libros.model.Libro;
   	

@Service
public class LibroClientImpl implements LibroClient {
	
	@Autowired
	RestTemplate restTemplate;

    private static final Logger LOG = LogManager.getLogger(LibroClientImpl.class);
    
	final String ROOT_URI = "https://hn.algolia.com/api/v1/search_by_date?query={curso}";

	public Libro getAllLibro() {
		LOG.debug("getAllLibro()");
          
		 ResponseEntity<Libro> response = restTemplate.getForEntity(ROOT_URI, Libro.class,"java");
		
		LOG.debug("response: " + response);
		 return response.getBody();


	}

}
