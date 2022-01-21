package com.pe.ventas.back.daos.libros.model;

import java.util.ArrayList;

public class CommentText {
	
	private String value;
    private String matchLevel;
    private boolean fullyHighlighted;
    private ArrayList<String> matchedWords;
    
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
	public boolean isFullyHighlighted() {
		return fullyHighlighted;
	}
	public void setFullyHighlighted(boolean fullyHighlighted) {
		this.fullyHighlighted = fullyHighlighted;
	}
	public ArrayList<String> getMatchedWords() {
		return matchedWords;
	}
	public void setMatchedWords(ArrayList<String> matchedWords) {
		this.matchedWords = matchedWords;
	}
    
    

}
