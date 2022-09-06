package com.iu.home.bankBook;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;

public class BankBookCommentDAOTest extends MyAbstractTest {
	
	@Autowired
	private BankBookCommentDAO bankBookCommentDAO;

	@Test
	public void setCommentAddTest()throws Exception{
		BankBookCommentDTO bankBookCommentDTO = new BankBookCommentDTO();
		bankBookCommentDTO.setWriter("reply");
		bankBookCommentDTO.setContents("contents");
		bankBookCommentDTO.setBookNum(16601941121345L);
		
		
		int result = bankBookCommentDAO.setCommentAdd(bankBookCommentDTO);
		
		assertEquals(1, result);
		
	}


}
