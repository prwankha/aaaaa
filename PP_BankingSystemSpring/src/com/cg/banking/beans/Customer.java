package com.cg.banking.beans;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "custId", updatable = false, nullable = false)
	private int custId;
	private String custName;
	private String custAddress;
	private long mobNo;
	@OneToOne(mappedBy = "customer",cascade=CascadeType.ALL)
	private Account account; 
	public Customer() {}
	public Customer(int custId, String custName, String custAddress, long mobNo, Account account) {
		super();
		this.custId = custId;
		this.custName = custName;
		this.custAddress = custAddress;
		this.mobNo = mobNo;
		this.account = account;
	}

	public Customer(String custName, String custAddress, long mobNo) {
		super();
		this.custName = custName;
		this.custAddress = custAddress;
		this.mobNo = mobNo;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}
	public long getMobNo() {
		return mobNo;
	}
	public void setMobNo(long mobNo) {
		this.mobNo = mobNo;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", custName=" + custName + ", custAddress=" + custAddress + ", mobNo=" + mobNo
				+ ", account=" + account + "]";
	}

}
