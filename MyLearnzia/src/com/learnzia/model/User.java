package com.learnzia.model;

import java.util.Date;

public class User {
	
	private String username;
	private String password;
	private String name;
	private String dateOfBirth;
	private String gender;
	private String email;
	private String mobileNo;
	private String address;
	private String dateOfJoining;
	private String designation;
	private String passcode;

	public User() {
		super();
	}

	

	public User(String username, String password, String name,
			String dateOfBirth, String gender, String email, String mobileNo,
			String address, String dateOfJoining, String designation,
			String passcode) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.email = email;
		this.mobileNo = mobileNo;
		this.address = address;
		this.dateOfJoining = dateOfJoining;
		this.designation = designation;
		this.passcode = passcode;
	}



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getPasscode() {
		return passcode;
	}

	public void setPasscode(String passcode) {
		this.passcode = passcode;
	}

	
	
	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", name=" + name + ", dateOfBirth="
				+ dateOfBirth + ", gender=" + gender + ", email=" + email + ", mobileNo=" + mobileNo + ", address="
				+ address + ", dateOfJoining=" + dateOfJoining + "]";
	}

}
