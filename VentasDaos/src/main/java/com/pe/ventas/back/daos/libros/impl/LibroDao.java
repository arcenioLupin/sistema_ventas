package com.pe.ventas.back.daos.libros.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;
import com.pe.ventas.back.daos.libros.ILibroDao;
import com.pe.ventas.back.dtos.daos.libros.LibroDaoDto;
import com.pe.ventas.back.dtos.daos.sql.libros.LibroSqlDto;
import com.pe.ventas.back.utilidades.mapeos.libros.LibroDtoMaper;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.pe.ventas.back.daos.libros.config.AppConfig;
import com.pe.ventas.back.daos.libros.config.LibroClient;
import com.pe.ventas.back.daos.libros.model.Libro;



@Repository("libroDao")
public class LibroDao implements ILibroDao {

    private static final Logger LOG = LogManager.getLogger(LibroDao.class);


    @Override
    @Cacheable(value = "libros")
    //@Transactional(readOnly = true)
    public List<LibroDaoDto> obtenerTodos()  {
    	LibroSqlDto objLibroSqlDto = new LibroSqlDto();
    	
    	LOG.debug("Llegó al dao impl");
    	/*
    	AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(AppConfig.class);
		LibroClient client = applicationContext.getBean(LibroClient.class);

		LOG.debug("Getting list of all books:");
		Libro p = client.getAllLibro();
		LOG.debug(p);
		applicationContext.close();
    	*/
    	 	
         objLibroSqlDto.setId(1);
    	objLibroSqlDto.setAutor("Arcenio Vilca");
    	objLibroSqlDto.setTitulo("GraphQL for Dummies");
    	objLibroSqlDto.setComentario("Un buen libro para iniciarse en GraphQL");
    	objLibroSqlDto.setFechaCreación("20/01/2022");
    	
    	List<LibroSqlDto> listaLibros = new ArrayList<>();
    	listaLibros.add(objLibroSqlDto); 	
        //final List<LibroSqlDto> listaUsuarios = libroSqlMaper.select();
        return LibroDtoMaper.INSTANCE.convertirListaLibroSqlDtoALibroDaoDto(listaLibros);

    }

    @Override
    @CacheEvict(value = "libros", allEntries = true)
    public void limpiarCache() {
        if (LOG.isDebugEnabled()) {
            LOG.debug("Se ejecuto la limpieza del cache libro");
        }
    }

}
