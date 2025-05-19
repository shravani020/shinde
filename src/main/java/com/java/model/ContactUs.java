package com.java.model;

public class ContactUs {
	protected String name;
	protected String email;
	private String message;
	
	public ContactUs(String name, String email, String message) {
		this.name = name;
		this.email = email;
		this.message = message;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getMessage() {
		return message;
	}
	
}
