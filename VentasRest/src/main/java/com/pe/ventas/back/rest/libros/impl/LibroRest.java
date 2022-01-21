package com.pe.ventas.back.rest.libros.impl;

import static com.pe.ventas.back.dtos.base.Constantes.CONTENT_TYPE;
import static spark.Spark.get;
import static spark.Spark.halt;
import static spark.Spark.path;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pe.ventas.back.dtos.rest.ResultResponse;
import com.pe.ventas.back.dtos.servicios.libros.LibroServicioDto;
import com.pe.ventas.back.rest.libros.ILibroRest;
import com.pe.ventas.back.servicios.libros.ILibroServicio;
import com.pe.ventas.back.utilidades.mapeos.libros.LibroDtoMaper;

import spark.Request;
import spark.Response;

@Component("libroRest")
public class LibroRest implements ILibroRest {

    private static final Logger LOG = LogManager.getLogger(LibroRest.class);

    @Autowired
    private ILibroServicio libroServicio;

    @Override
    public void routers() {

        path("/api", () -> {
            path("/v1", () -> {
                get("/libros/estadoDelServicio", CONTENT_TYPE,
                        (request, response) -> new ResultResponse.Builder().code(200).message("Funcionando").build());
                get("/libros", CONTENT_TYPE, (request, response) -> todosLosLibros(request, response));
                get("/libros/clear", CONTENT_TYPE, (request, response) -> limpiarCache(request, response));
            });
        });

    }

    private void validarContentType(final Request request, final Response response) {
        if (!StringUtils.equals(request.contentType(), CONTENT_TYPE)) {
            if (LOG.isDebugEnabled()) {
                LOG.debug("Fallo en el tipo de content-type en el request");
            }
            response.type(CONTENT_TYPE);
            halt(500, new ResultResponse.Builder().code(500).message("Error en el Content-Type").build().aJson());
        }
    }

    private ResultResponse limpiarCache(final Request request, final Response response) {
        validarContentType(request, response);

        libroServicio.limpiarCache();
        response.type(CONTENT_TYPE);
        return new ResultResponse.Builder().code(200).message("Cache limpio").build();

    }


    private ResultResponse todosLosLibros(final Request request, final Response response) {
        validarContentType(request, response);

        final List<LibroServicioDto> todosLosLibros = libroServicio.todosLosLibros();

        response.type(CONTENT_TYPE);
        if (CollectionUtils.isNotEmpty(todosLosLibros)) {
            return new ResultResponse.Builder()
                    .object(LibroDtoMaper.INSTANCE.convertirListaLibroServicioDtoALibroRestDto(todosLosLibros))
                    .build();
        }

        response.status(500);
        return new ResultResponse.Builder().code(500).message("Fallo al obtener todos los libros").build();
    }
    
   
}
