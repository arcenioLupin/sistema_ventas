package com.pe.ventas.back.dtos.servicios.libros;

import java.io.Serializable;
import java.util.Date;

import com.pe.ventas.back.dtos.base.JsonDto;


public class LibroServicioDto implements Serializable {

    private static final long serialVersionUID = 3295452824284665006L;

    private Integer id;
    private String titulo;
    private String fechaCreación;
    private String autor;
    private String comentario;
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getFechaCreación() {
		return fechaCreación;
	}
	public void setFechaCreación(String fechaCreación) {
		this.fechaCreación = fechaCreación;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
    
    
}
