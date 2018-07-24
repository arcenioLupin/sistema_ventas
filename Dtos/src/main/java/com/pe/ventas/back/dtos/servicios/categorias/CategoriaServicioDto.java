package com.pe.ventas.back.dtos.servicios.categorias;

import java.io.Serializable;
import java.util.Date;

import com.pe.ventas.back.dtos.base.JsonDto;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CategoriaServicioDto implements Serializable {
	

	private static final long serialVersionUID = -7481172203102337953L;
	
	private String  categoriaNombre;
	private String  categoriaDescripcion;
	private String  categoriaEstado;
	private Date    categoriaFecre;
	private Date    categoriaHocre;
	private String  categoriaUscre;
	private Date    categoriaFemod;
	private Date    categoriaHomod;
	private Date    categoriaUsmod;
	
    public String aJson() {
        return JsonDto.aJson(this);
    }

}
