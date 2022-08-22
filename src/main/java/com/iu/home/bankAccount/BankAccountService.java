package com.iu.home.bankAccount;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.bankMembers.BankMembersDTO;

@Service
public class BankAccountService {
	
	@Autowired
	private BankAccountDAO bankAccountDAO;
	
	public List<BankAccountDTO> getListByUserName(BankMembersDTO bankMembersDTO)throws Exception{
		return bankAccountDAO.getListByUserName(bankMembersDTO);
	}
	
	public int setAddAccount(BankAccountDTO bankAccountDTO)throws Exception{
		return bankAccountDAO.setAddAccount(bankAccountDTO);
	}
	

}
