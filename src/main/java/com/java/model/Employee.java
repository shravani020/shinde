package com.java.model;

public class Employee {
	private int id;
	private String fanme;
	private String lname;
	private String dob;
	private String phone;
	private String gender;
	private String email;
	private String pwd;
	private String add;
	private String job;
	private String join;
	private String insure;
	private String zone;
	private String username;
	
	public Employee(int id, String fanme, String lname, String dob, String phone, String gender, String email,
			String pwd, String add, String job, String join, String insure, String zone, String username) {
		super();
		this.id = id;
		this.fanme = fanme;
		this.lname = lname;
		this.dob = dob;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.pwd = pwd;
		this.add = add;
		this.job = job;
		this.join = join;
		this.insure = insure;
		this.zone = zone;
		this.username = username;
	}

	public int getId() {
		return id;
	}

	public String getFanme() {
		return fanme;
	}

	public String getLname() {
		return lname;
	}

	public String getDob() {
		return dob;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public String getEmail() {
		return email;
	}

	public String getPwd() {
		return pwd;
	}

	public String getAdd() {
		return add;
	}

	public String getJob() {
		return job;
	}

	public String getJoin() {
		return join;
	}

	public String getInsure() {
		return insure;
	}

	public String getZone() {
		return zone;
	}

	public String getUsername() {
		return username;
	}


	

}
