package com.learnzia.model;

import java.sql.Date;

public class Assignment {

	private int id;
	private String question;
	private String module;
	private String topic;
	Date enddate;
	
	public Assignment() {}

	public Assignment(int id, String question, String module, String topic, Date enddate) {
		super();
		this.id = id;
		this.question = question;
		this.module = module;
		this.topic = topic;
		this.enddate = enddate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	@Override
	public String toString() {
		return "Assignment [id=" + id + ", question=" + question + ", module=" + module + ", topic=" + topic
				+ ", enddate=" + enddate + "]";
	}
	
	
}
