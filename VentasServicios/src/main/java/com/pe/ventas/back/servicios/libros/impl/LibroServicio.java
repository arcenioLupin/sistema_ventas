package com.pe.ventas.back.servicios.libros.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pe.ventas.back.daos.libros.ILibroDao;
import com.pe.ventas.back.daos.libros.impl.LibroDao;
import com.pe.ventas.back.dtos.daos.libros.LibroDaoDto;
import com.pe.ventas.back.dtos.servicios.libros.LibroServicioDto;
import com.pe.ventas.back.servicios.libros.ILibroServicio;
import com.pe.ventas.back.utilidades.mapeos.libros.LibroDtoMaper;

@Service("libroServicio")
public class LibroServicio implements ILibroServicio {

    private static final Logger LOG = LogManager.getLogger(LibroServicio.class);

    @Autowired
    private ILibroDao libroDao;

   

    @Override
    public List<LibroServicioDto> todosLosLibros() {
    	LOG.debug("Llegó al libroServicio impl");
        final List<LibroDaoDto> obtenerTodos = libroDao.obtenerTodos();

        if (CollectionUtils.isNotEmpty(obtenerTodos)) {
            return LibroDtoMaper.INSTANCE.convertirListaLibroDaoDtoALibroServicioDto(obtenerTodos);
        }

        return null;
    }



    @Override
    public void limpiarCache() {
    	libroDao.limpiarCache();
    }

}
