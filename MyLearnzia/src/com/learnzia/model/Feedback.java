package com.learnzia.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Feedback_Table")
public class Feedback {
	@Id
	@Column(name = "id", unique = true, nullable = false)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="feedback_seq")
	@SequenceGenerator(name="feedback_seq" ,allocationSize=1,sequenceName="feedback_seq")
	private int id;
	@Column(name = "Trainer_Name", length = 40)
	private String trainerName;
	@Column(name = "Rating", length = 20)
	private String rating;
	@Column(name = "Feedback_message", length = 256)
	private String message;
	
	public Feedback() {
		super();
	}

	public Feedback(String trainerName, String rating, String message) {
		super();
		this.trainerName = trainerName;
		this.rating = rating;
		this.message = message;
	}
	public String getTrainerName() {
		return trainerName;
	}

	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}