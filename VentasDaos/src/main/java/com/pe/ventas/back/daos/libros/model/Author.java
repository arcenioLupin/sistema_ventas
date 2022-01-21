package com.pe.ventas.back.daos.libros.model;

import java.util.ArrayList;

public class Author {
	
    private String value;
    private String matchLevel;
    private  ArrayList<Object> matchedWords;
    
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getMatchLevel() {
		return matchLevel;
	}
	public void setMatchLevel(String matchLevel) {
		this.matchLevel = matchLevel;
	}
	public ArrayList<Object> getMatchedWords() {
		return matchedWords;
	}
	public void setMatchedWords(ArrayList<Object> matchedWords) {
		this.matchedWords = matchedWords;
	}
    
    
    

}
