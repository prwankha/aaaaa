package com.cg.banking.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cg.banking.beans.Account;
import com.cg.banking.beans.Customer;
import com.cg.banking.exceptions.AccountBlockedException;
import com.cg.banking.exceptions.AccountNotFoundException;
import com.cg.banking.exceptions.BankingServicesDownException;
import com.cg.banking.exceptions.InsufficientAmountException;
import com.cg.banking.exceptions.InvalidAccountTypeException;
import com.cg.banking.exceptions.InvalidAmountException;
import com.cg.banking.exceptions.InvalidPinNumberException;
import com.cg.banking.services.BankingServices;


@Controller
@SessionAttributes
public class BankingControllers {
	
	@Autowired
	BankingServices services;

	public BankingServices getServices() {
		return services;
	}
	public void setServices(BankingServices services) {
		this.services = services;
	}
	/*LoginPage*/
	@RequestMapping(value = "LoginPage", method = RequestMethod.GET)
	public String displayLoginPage(@ModelAttribute(value="account") Account account,Model model) {
		Account account1=new Account();
        model.addAttribute("account",account1);
		return "login";
	}


	/*Register*/
	@RequestMapping(value = "Register", method = RequestMethod.GET)
	public String displayAddTraineePage(@ModelAttribute(value="cust") @Valid Customer customer,Model model,BindingResult result) {
		model.addAttribute("customer", new Customer());
		return "Register";
	}
	
	
	
	@RequestMapping(value="OpenAccount", method=RequestMethod.POST)
	public String displayOpenAccount(@ModelAttribute(value="acc") @Valid Account account,BindingResult result,Model model) throws InvalidAmountException, InvalidAccountTypeException, BankingServicesDownException {
		model.addAttribute("acc", new Account());
		return "OpenAccPage";
	}
	
	@RequestMapping(value="AcceptAccountDetails", method=RequestMethod.POST)
	public String acceptAccountDetails(@ModelAttribute(value="acc") @Valid Account account, BindingResult result,Model model) throws InvalidAmountException, InvalidAccountTypeException, BankingServicesDownException {
		Account acnt = services.openAccount(account.getCustomer().getCustName(), account.getCustomer().getCustAddress(), account.getCustomer().getMobNo(), account.getAccountType(), account.getAccountBalance(),account.getAccountNo(),account.getPinNumber());
		model.addAttribute("account", acnt);
		return "AccountOpenSuccess";
	}
	
	/*login*/
	@RequestMapping(value="Login", method=RequestMethod.GET)
	public String displayLoginPage(Model model) {
		  Account account=new Account();
	        model.addAttribute("account",account);
	        return "login";
	}
	
	@RequestMapping(value="/ValidateUser", method=RequestMethod.POST)
	public String validateUser(@ModelAttribute(value="account") 
	@Valid Account account,BindingResult result,Model model) {
		Account account1=services.findOne(account.getAccountNo());
		long f=account.getAccountNo();
        int pass=account.getPinNumber();
        if(account1.getAccountNo()==f && account1.getPinNumber()==pass) {
            model.addAttribute("message", "Logged in");
            model.addAttribute("account", account1);
            return "Menu";
            }
        else {
        model.addAttribute("message","Wrong Credentials");
        return "login";
        }
	}
	
	/*withdraw*/
	@RequestMapping(value="withdraw.obj",method=RequestMethod.POST)
    public String withdraw(@ModelAttribute(value="account")  Account account,BindingResult result,Model model) throws AccountNotFoundException, BankingServicesDownException {
        account=services.findOne(account.getAccountNo());
        model.addAttribute("message1", "Confidential");
        model.addAttribute("account",account);
        return "Withdraw";
    }
	
	 @RequestMapping(value="withdraw1.obj",method=RequestMethod.POST)
	    public String withdraw1(@ModelAttribute(value="account") Account account ,Model model,@RequestParam(value="amount")String amount) throws AccountNotFoundException, BankingServicesDownException, InsufficientAmountException, InvalidPinNumberException, AccountBlockedException {
	       	account=services.findOne(account.getAccountNo());
	        float h=Float.parseFloat(amount);
	        float amnt = services.withdrawAmount(account.getAccountNo(), h, account.getPinNumber());
	        model.addAttribute("amountmessage","Available balance is "+amnt);
	        model.addAttribute("message", "Amount withdrawed sucessfully");
	        model.addAttribute("account", account);
	        return"Withdraw";
	    }
	
	 /*Deposit*/
	 @RequestMapping(value="deposit.obj",method=RequestMethod.POST)
	    public String deposit(@ModelAttribute(value="account")Account account ,Model model) {
	        account=services.findOne(account.getAccountNo());
	        model.addAttribute("message1", "Confidential");
	        model.addAttribute("account",account);
	        return "Deposit";
	    }
	    @RequestMapping(value="deposit1.obj",method=RequestMethod.POST)
	    public String deposit1(@ModelAttribute(value="account")Account account ,Model model,@RequestParam(value="amount") String amount) throws AccountNotFoundException, BankingServicesDownException, AccountBlockedException {
	        account=services.findOne(account.getAccountNo());
	        float h=Float.parseFloat(amount);
	        float amnt=services.depositAmount(account.getAccountNo(),h);
	        model.addAttribute("amountmessage","Available balance is "+amnt);
	        model.addAttribute("message", "Amount deposited");
	        return"Deposit";
	    }
	 
	    /*transfer*/
	    
	    @RequestMapping(value="transfer.obj",method=RequestMethod.POST)
	    public String transfer(@ModelAttribute(value="account")Account account ,Model model) {
	        account=services.findOne(account.getAccountNo());
	        model.addAttribute("message1", "Confidential");
	        model.addAttribute("account",account);
	        return "Transfer";
	    }
	    
	    @RequestMapping(value="transfer1.obj",method=RequestMethod.POST)
	    public String transfer1(@ModelAttribute(value="account")Account account ,Model model,@RequestParam(value="amount") String amount,@RequestParam(value="taccount") String taccount) throws InsufficientAmountException, AccountNotFoundException, InvalidPinNumberException, BankingServicesDownException, AccountBlockedException {
	        account=services.findOne(account.getAccountNo());
	        long acc=Long.parseLong(taccount);
	        float amm=Float.parseFloat(amount);
	        services.fundTransfer(acc, account.getAccountNo(), amm, account.getPinNumber());
	        float amnt = services.withdrawAmount(account.getAccountNo(), amm, account.getPinNumber());
	        model.addAttribute("message", "Funds Transferred Sucessfully");
	        model.addAttribute("amountmessage","Available balance is "+amnt);
	        return"Transfer";
	    }
	    
	    @RequestMapping(value="display.obj",method=RequestMethod.POST)
	    public String display(@ModelAttribute(value="account")Account account ,Model model) {
	        account=services.findOne(account.getAccountNo());
	        model.addAttribute("message1", "Confidential");
	        model.addAttribute("account",account);
	        return "Display";
	    }
	 
}
