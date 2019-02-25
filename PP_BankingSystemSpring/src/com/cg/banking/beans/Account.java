package com.cg.banking.beans;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

@Entity
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "accNum_generator")
	@SequenceGenerator(name="accNum_generator", sequenceName = "accNum_seq" ,allocationSize=1)
	private long accountNo;	
	private int pinNumber;
	private String accountType,status;
	private float accountBalance;
	
	 @OneToMany(mappedBy = "account",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
		private List<Transaction> transactions;
		 @OneToOne(cascade=CascadeType.ALL)
		private Customer customer;
	public Account() {	}
	public Account(long accountNo, int pinNumber, String accountType, String status, float accountBalance,
			List<Transaction> transactions, Customer customer) {
		super();
		this.accountNo = accountNo;
		this.pinNumber = pinNumber;
		this.accountType = accountType;
		this.status = status;
		this.accountBalance = accountBalance;
		this.transactions = transactions;
		this.customer = customer;
	}
	
	public Account(long accountNo, int pinNumber, String accountType, String status, float accountBalance,
			Customer customer) {
		super();
		this.accountNo = accountNo;
		this.pinNumber = pinNumber;
		this.accountType = accountType;
		this.status = status;
		this.accountBalance = accountBalance;
		this.customer = customer;
	}
	public long getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}
	public int getPinNumber() {
		return pinNumber;
	}
	public void setPinNumber(int pinNumber) {
		this.pinNumber = pinNumber;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public float getAccountBalance() {
		return accountBalance;
	}
	public void setAccountBalance(float accountBalance) {
		this.accountBalance = accountBalance;
	}
	public List<Transaction> getTransactions() {
		return transactions;
	}
	public void setTransactions(List<Transaction> transactions) {
		this.transactions = transactions;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Account [accountNo=" + accountNo + ", pinNumber=" + pinNumber + ", accountType=" + accountType
				+ ", status=" + status + ", accountBalance=" + accountBalance + ", transactions=" + transactions
				+ ", customer=" + customer + "]";
	}
	
}