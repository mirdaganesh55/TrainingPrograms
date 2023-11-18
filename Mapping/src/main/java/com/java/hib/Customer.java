package com.java.hib;

import java.util.Date;

public class Customer {
	
	private int custId;
	private String firstName,lastName,userName,passCode;
	private Gender gender;
	private Status status;
	private Date dateOfBirth;
	private String email;
	
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassCode() {
		return passCode;
	}
	public void setPassCode(String passCode) {
		this.passCode = passCode;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", firstName=" + firstName + ", lastName=" + lastName + ", userName="
				+ userName + ", passCode=" + passCode + ", gender=" + gender + ", status=" + status + ", dateOfBirth="
				+ dateOfBirth + ", email=" + email + "]";
	}
	public Customer(int custId, String firstName, String lastName, String userName, String passCode, Gender gender,
			Status status, Date dateOfBirth, String email) {
		super();
		this.custId = custId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.passCode = passCode;
		this.gender = gender;
		this.status = status;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}	
}
