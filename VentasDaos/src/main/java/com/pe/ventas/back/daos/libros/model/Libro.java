package com.pe.ventas.back.daos.libros.model;

import java.util.ArrayList;

public class Libro {
	
    private ArrayList<Hit> hits;
    private int nbHits;
    private int page;
    private int nbPages;
    private int hitsPerPage;
    private boolean exhaustiveNbHits;
    private boolean exhaustiveTypo;
    private String query;
    private String params;
    private RenderingContent renderingContent;
    private int processingTimeMS;
    
	public ArrayList<Hit> getHits() {
		return hits;
	}
	public void setHits(ArrayList<Hit> hits) {
		this.hits = hits;
	}
	public int getNbHits() {
		return nbHits;
	}
	public void setNbHits(int nbHits) {
		this.nbHits = nbHits;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getNbPages() {
		return nbPages;
	}
	public void setNbPages(int nbPages) {
		this.nbPages = nbPages;
	}
	public int getHitsPerPage() {
		return hitsPerPage;
	}
	public void setHitsPerPage(int hitsPerPage) {
		this.hitsPerPage = hitsPerPage;
	}
	public boolean isExhaustiveNbHits() {
		return exhaustiveNbHits;
	}
	public void setExhaustiveNbHits(boolean exhaustiveNbHits) {
		this.exhaustiveNbHits = exhaustiveNbHits;
	}
	public boolean isExhaustiveTypo() {
		return exhaustiveTypo;
	}
	public void setExhaustiveTypo(boolean exhaustiveTypo) {
		this.exhaustiveTypo = exhaustiveTypo;
	}
	public String getQuery() {
		return query;
	}
	public void setQuery(String query) {
		this.query = query;
	}
	public String getParams() {
		return params;
	}
	public void setParams(String params) {
		this.params = params;
	}
	public RenderingContent getRenderingContent() {
		return renderingContent;
	}
	public void setRenderingContent(RenderingContent renderingContent) {
		this.renderingContent = renderingContent;
	}
	public int getProcessingTimeMS() {
		return processingTimeMS;
	}
	public void setProcessingTimeMS(int processingTimeMS) {
		this.processingTimeMS = processingTimeMS;
	}
    
	@Override
	public String toString() {
		return "Libros{" + "hits=" + hits + ", nbHits=" + nbHits + ", page='" + page + ", nbPages=" + nbPages +" hitsPerPage=" + hitsPerPage+" +  }";
	}

}
