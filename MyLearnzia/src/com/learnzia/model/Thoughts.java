package com.learnzia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "QUOTE")
public class Thoughts {
	@Id
	@Column(name = "QUOTE_ID")
	private int ThoughtId;
	@Column(name = "QUOTE_DATA", length = 256)
	private String thought;

	public Thoughts() {
		super();
	}

	public Thoughts(int thoughtId, String thought) {
		super();
		ThoughtId = thoughtId;
		this.thought = thought;
	}

	
	public int getThoughtId() {
		return ThoughtId;
	}

	public void setThoughtId(int thoughtId) {
		ThoughtId = thoughtId;
	}

	public String getThought() {
		return thought;
	}

	public void setThought(String thought) {
		this.thought = thought;
	}

}
