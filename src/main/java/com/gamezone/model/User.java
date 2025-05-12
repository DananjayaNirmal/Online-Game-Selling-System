package com.gamezone.model;

public class User {
	
	private int userID;
	private String userName;
	private String email;
	private int phoneNo;
	private String password;
	private String roll;
	
	private int age;
	private String gender;
	
	public User(int userId, String userName, String email, int phoneNo, String password, String roll, int age, String gender) {
		super();
		this.userID = userId;
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.roll = roll;
		this.age = age;
		this.gender = gender;
	}

	public User(String userName, String email, int phoneNo, String password, String roll, int age, String gender) {
		super();
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.roll = roll;
		this.age = age;
		this.gender = gender;
	}
	

	public int getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName + ", email=" + email + ", phoneNo=" + phoneNo
				+ ", password=" + password + ", roll=" + roll + ", age=" + age + ", gender=" + gender + "]";
	}

	public int getUserID() {
		return userID;
	}

	public String getUserName() {
		return userName;
	}

	public String getEmail() {
		return email;
	}

	public int getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public String getRoll() {
		return roll;
	}

	public void setUserID(int userId) {
		this.userID = userId;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}
	
	
	

}
