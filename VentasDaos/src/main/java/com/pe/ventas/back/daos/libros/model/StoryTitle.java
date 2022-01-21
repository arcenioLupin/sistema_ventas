package com.pe.ventas.back.daos.libros.model;

import java.util.ArrayList;

public class StoryTitle {
	
    private String value;
    private String matchLevel;
    private ArrayList<String> matchedWords;
    private boolean fullyHighlighted;
    
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
	public ArrayList<String> getMatchedWords() {
		return matchedWords;
	}
	public void setMatchedWords(ArrayList<String> matchedWords) {
		this.matchedWords = matchedWords;
	}
	public boolean isFullyHighlighted() {
		return fullyHighlighted;
	}
	public void setFullyHighlighted(boolean fullyHighlighted) {
		this.fullyHighlighted = fullyHighlighted;
	}	
    
    

}
