package com.iu.home.bankAccount;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;
import com.iu.home.bankMembers.BankMembersDTO;

public class BankAccountDAOTest extends MyAbstractTest {
	
	@Autowired
	private BankAccountDAO bankAccountDAO;
	
	@Test
	public void getListTest()throws Exception{
		BankMembersDTO bankMembersDTO = new BankMembersDTO();
		bankMembersDTO.setUserName("id1");
		List<BankAccountDTO> ar = bankAccountDAO.getListByUserName(bankMembersDTO);
		assertNotEquals(0, ar.size());
	}

}
