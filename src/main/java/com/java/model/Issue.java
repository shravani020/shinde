package com.java.model;

public class Issue extends ContactUs{
	private String issue;
	
	public Issue(String name, String email, String message, String issue) {
		super(name, email, message);
		this.issue = issue;
	}

	public String getIssue() {
		return issue;
	}

}
