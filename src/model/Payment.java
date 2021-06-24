package model;

public class Payment {
	String paymentid,description;
	double amount;
	int userid;
	public Payment(String paymentid, String description, double amount, int userid) {
		super();
		this.paymentid = paymentid;
		this.description = description;
		this.amount = amount;
		this.userid = userid;
	}
	public String getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(String paymentid) {
		this.paymentid = paymentid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	
}
