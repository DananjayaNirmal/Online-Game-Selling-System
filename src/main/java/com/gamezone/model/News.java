package com.gamezone.model;

public class News {
	
	private int id;
	private String title;
	private String content;
	private String date;
	//private String content;
	//private String date;
	
	
	public News(String title, String content, String date) {
		super();
		this.title = title;
		this.content = content;
		this.date = date;	
	}
	
	
	public News(int id, String title, String content, String date) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}


	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + "]";
	}


	public int getId() {
		return id;
	}


	public String getTitle() {
		return title;
	}


	public String getContent() {
		return content;
	}


	public String getDate() {
		return date;
	}


	public void setId(int id) {
		this.id = id;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	
	

}
