package com.gamezone.model;

public class Feedbacks {
	
	private int feedbackId;
	//private String email;
	private String description;
	private String date;
	
	public Feedbacks(int feedbackId, String description, String date) {
		super();
		this.feedbackId = feedbackId;
		this.description = description;
		this.date = date;
	}

	public Feedbacks(String description, String date) {
		super();
		this.description = description;
		this.date = date;
	}

	@Override
	public String toString() {
		return "Feedbacks [feedbackId=" + feedbackId + ", description=" + description + ", date=" + date + "]";
	}

	public int getFeedbackId() {
		return feedbackId;
	}

	public String getDescription() {
		return description;
	}

	public String getDate() {
		return date;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	
	

}
