package com.pe.ventas.back.utilidades.mapeos.libros;

import java.util.List;

import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.factory.Mappers;

import com.pe.ventas.back.dtos.daos.libros.LibroDaoDto;
import com.pe.ventas.back.dtos.daos.sql.libros.LibroSqlDto;
import com.pe.ventas.back.dtos.rest.libros.LibroRestDto;
import com.pe.ventas.back.dtos.servicios.libros.LibroServicioDto;

@Mapper
public interface LibroDtoMaper {

    LibroDtoMaper INSTANCE = Mappers.getMapper(LibroDtoMaper.class);

 
    LibroDaoDto libroSqlDtoALibroDaoDto(LibroSqlDto libro);

    @InheritInverseConfiguration
    LibroSqlDto libroDaoDtoALibroSqlDto(LibroDaoDto libro);

    LibroServicioDto libroDaoDtoALibroServicioDto(LibroDaoDto libro);

    LibroDaoDto libroServicioDtoALibroDaoDto(LibroServicioDto libro);

    LibroRestDto usuarioServicioDtoALibroRestDto(LibroServicioDto libro);

    LibroServicioDto libroRestDtoALibroServicioDto(LibroRestDto libro);

    List<LibroRestDto> convertirListaLibroServicioDtoALibroRestDto(List<LibroServicioDto> libro); // si

    List<LibroDaoDto> convertirListaLibroSqlDtoALibroDaoDto(List<LibroSqlDto> libro); //si

    List<LibroSqlDto> convertirListaLibroDaoDtoALibroSqlDto(List<LibroDaoDto> libro);

    List<LibroServicioDto> convertirListaLibroDaoDtoALibroServicioDto(List<LibroDaoDto> libro); //si

}
