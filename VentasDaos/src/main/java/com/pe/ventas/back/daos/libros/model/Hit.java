package com.pe.ventas.back.daos.libros.model;

import java.util.ArrayList;
import java.util.Date;

public class Hit {
	
    private Date created_at;
    private Object title;
    private Object url;
    private String author;
    private Object points;
    private Object story_text;
    private String comment_text;
    private Object num_comments;
    private int story_id;
    private String story_title;
    private String story_url;
    private int parent_id;
    private int created_at_i;
    private ArrayList<String> _tags;
    private String objectID;
    private HighlightResult _highlightResult;
    
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Object getTitle() {
		return title;
	}
	public void setTitle(Object title) {
		this.title = title;
	}
	public Object getUrl() {
		return url;
	}
	public void setUrl(Object url) {
		this.url = url;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Object getPoints() {
		return points;
	}
	public void setPoints(Object points) {
		this.points = points;
	}
	public Object getStory_text() {
		return story_text;
	}
	public void setStory_text(Object story_text) {
		this.story_text = story_text;
	}
	public String getComment_text() {
		return comment_text;
	}
	public void setComment_text(String comment_text) {
		this.comment_text = comment_text;
	}
	public Object getNum_comments() {
		return num_comments;
	}
	public void setNum_comments(Object num_comments) {
		this.num_comments = num_comments;
	}
	public int getStory_id() {
		return story_id;
	}
	public void setStory_id(int story_id) {
		this.story_id = story_id;
	}
	public String getStory_title() {
		return story_title;
	}
	public void setStory_title(String story_title) {
		this.story_title = story_title;
	}
	public String getStory_url() {
		return story_url;
	}
	public void setStory_url(String story_url) {
		this.story_url = story_url;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	public int getCreated_at_i() {
		return created_at_i;
	}
	public void setCreated_at_i(int created_at_i) {
		this.created_at_i = created_at_i;
	}
	public ArrayList<String> get_tags() {
		return _tags;
	}
	public void set_tags(ArrayList<String> _tags) {
		this._tags = _tags;
	}
	public String getObjectID() {
		return objectID;
	}
	public void setObjectID(String objectID) {
		this.objectID = objectID;
	}
	public HighlightResult get_highlightResult() {
		return _highlightResult;
	}
	public void set_highlightResult(HighlightResult _highlightResult) {
		this._highlightResult = _highlightResult;
	}
    
    

}
