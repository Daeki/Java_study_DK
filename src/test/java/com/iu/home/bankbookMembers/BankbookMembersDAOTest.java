package com.iu.home.bankbookMembers;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;
import com.iu.home.bankMembers.BankMembersDAO;
import com.iu.home.bankMembers.BankMembersDTO;


public class BankbookMembersDAOTest extends MyAbstractTest {
	
	@Autowired
	private BankMembersDAO bankMembersDAO;
	
	@Test
	public void getMyPageTest()throws Exception{
		BankMembersDTO bankMembersDTO = new BankMembersDTO();
		bankMembersDTO.setUserName("id1");
		bankMembersDTO=bankMembersDAO.getMyPage(bankMembersDTO);
		System.out.println(bankMembersDTO.getEmail());
		assertNotNull(bankMembersDTO);
		
	}
	



}
