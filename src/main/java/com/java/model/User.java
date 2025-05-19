package com.java.model;

public class User {
	private int id;
	private String Uname;
	private String email;
	private String fname;
	private String lname;
	private String add;
	private String gender;
	private String dob;
	private String phone;
	private String pwd;
	
	public User() {
		
	}

	public User(int id, String uname, String email, String fname, String lname, String add, String gender, String dob ,String phone, String pwd) {
		//super();
		this.id = id;
		this.Uname = uname;
		this.email = email;
		this.fname = fname;
		this.lname = lname;
		this.add = add;
		this.gender = gender;
		this.dob = dob;
		this.phone = phone;
		this.pwd = pwd;
	}

	public int getId() {
		return id;
	}

	public String getUname() {
		return Uname;
	}

	public String getEmail() {
		return email;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getAdd() {
		return add;
	}

	public String getGender() {
		return gender;
	}

	public String getDob() {
		return dob;
	}

	public String getPhone() {
		return phone;
	}

	public String getPwd() {
		return pwd;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUname(String uname) {
		Uname = uname;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setAdd(String add) {
		this.add = add;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	

}
