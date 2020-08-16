package com.learnzia.model;


import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SESSION_TABLE")
public class SessionModel {
	@Id
	@Column(name = "Session_ID")
	int id;
	@Column(name = "SESSION_TITLE")
	String name;
	@Column(name = "STARTTIME")
	String start;
	@Column(name = "ENDTIME")
	String end;
	@Column(name = "BATCH")
	String batch;
	@Column(name = "VENUE")
	String venue;
	@Column(name= "Trainer")
	String trainer;
	
	public SessionModel() {}

	public SessionModel(int id, String name, String start, String end, String venue, String batch,String trainer) {
		super();
		this.id = id;
		this.name = name;
		this.start = start;
		this.end = end;
		this.venue = venue;
		this.batch = batch;
		this.trainer=trainer;
	}
	
	public String getTrainer() {
		return trainer;
	}

	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	@Override
	public String toString() {
		return "Session [id=" + id + ", name=" + name + ", start=" + start + ", end=" + end + ", venue=" + venue
				+ ", batch=" + batch + "]";
	}

}