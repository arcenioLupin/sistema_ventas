package com.pe.ventas.back.dtos.rest.libros;

import java.io.Serializable;

import com.pe.ventas.back.dtos.base.JsonDto;


public class LibroRestDto implements Serializable {

    private static final long serialVersionUID = 605689904521722810L;

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
