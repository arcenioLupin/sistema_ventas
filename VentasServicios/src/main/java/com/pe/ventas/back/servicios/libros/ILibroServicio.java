package com.pe.ventas.back.servicios.libros;

import java.util.List;

import com.pe.ventas.back.dtos.servicios.libros.LibroServicioDto;

public interface ILibroServicio {

    
    List<LibroServicioDto> todosLosLibros();
    

    void limpiarCache();

}
