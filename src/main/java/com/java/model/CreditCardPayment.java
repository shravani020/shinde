package com.java.model;

public class CreditCardPayment extends Payment{
	private String cardNo;
	
	public CreditCardPayment(String paymentMethodId, double amount, String cardNo) {
		super(paymentMethodId, amount);
		this.cardNo = cardNo;
	}

	public String getCardNo() {
		return cardNo;
	}

}
