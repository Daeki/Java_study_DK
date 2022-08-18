package com.iu.home.bankAccount;

import java.sql.Date;

public class BankAccountDTO {
	private Long bankAccount;
	private String userName;
	private Long bookNum;
	private Date accountDate;
	
	public Long getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(Long bankAccount) {
		this.bankAccount = bankAccount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Long getBookNum() {
		return bookNum;
	}
	public void setBookNum(Long bookNum) {
		this.bookNum = bookNum;
	}
	public Date getAccountDate() {
		return accountDate;
	}
	public void setAccountDate(Date accountDate) {
		this.accountDate = accountDate;
	}
	
	

}
