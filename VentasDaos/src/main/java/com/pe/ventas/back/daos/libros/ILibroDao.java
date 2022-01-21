package com.pe.ventas.back.daos.libros;

import java.util.List;

import com.pe.ventas.back.dtos.daos.libros.LibroDaoDto;

public interface ILibroDao {

    List<LibroDaoDto> obtenerTodos();

    void limpiarCache();
}
