package com.gamezone.model;

public class userModel {
     int userID;
     String userName;
     String email;
     String dob;
     int age;
     String gender;
     String password;
     String role;
     
     
     
	public userModel(int userID, String userName, String email, String dob, int age, String gender, String password,
			String role) {
		this.userID = userID;
		this.userName = userName;
		this.email = email;
		this.dob = dob;
		this.age = age;
		this.gender = gender;
		this.password = password;
		this.role = role;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}


}