package com.iu.home.bankbookMembers;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;

public class BankbookMembersDAOTest extends MyAbstractTest {

	@Autowired
	private BankbookMembersDAO bankbookMembersDAO;
	
	@Test
	public void setJoinTest()throws Exception{
		int result = bankbookMembersDAO.setJoin("df");
		throw new Exception();
		//assertEquals(1, result);
	}
	
	@Test
	public void getLoginTest()throws Exception{
		Object obj= bankbookMembersDAO.getLogin("df");
		assertNull(obj);
	}
	
	@Test
	public void getSearch()throws Exception{
		List<Object> ar = bankbookMembersDAO.getSearch("ad");
		
		assertNotEquals(0, ar.size());
		
	}
	

}
