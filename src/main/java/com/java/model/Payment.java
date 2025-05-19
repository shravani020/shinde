package com.java.model;

public class Payment {
	protected String paymentMethodId;
	protected double amount;
	
	public Payment(String paymentMethodId, double amount) {
		this.paymentMethodId = paymentMethodId;
		this.amount = amount;
	}

	public String getPaymentMethodId() {
		return paymentMethodId;
	}

	public double getAmount() {
		return amount;
	}

}
