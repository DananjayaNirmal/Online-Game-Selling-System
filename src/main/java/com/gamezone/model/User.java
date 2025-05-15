package com.gamezone.model;

public class User {
	
	private int userID;
	private String userName;
	private String email;
	private String phoneNo;
	private String password;
	private String roll;
	
	private int age;
	private String gender;
	
	public User(int userID, String userName, String email, String phoneNo, String password, String roll, int age, String gender) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.roll = roll;
		this.age = age;
		this.gender = gender;
	}

	public User(String userName, String email, String phoneNo, String password, String roll, int age, String gender) {
		super();
		this.userName = userName;
		this.email = email;
		this.phoneNo = phoneNo;
		this.password = password;
		this.roll = roll;
		this.age = age;
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

	public String getPhoneNo() {
		return phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public String getRoll() {
		return roll;
	}

	public int getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setRoll(String roll) {
		this.roll = roll;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
	

}
