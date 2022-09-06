package com.iu.home.bankBook;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;
import com.iu.home.util.CommentPager;

public class BankBookCommentDAOTest extends MyAbstractTest {
	
	@Autowired
	private BankBookCommentDAO bankBookCommentDAO;
	@Test
	public void getCommentListTest()throws Exception{
		CommentPager commentPager = new CommentPager();
		commentPager.setBookNum(1660194181698L);
		commentPager.setPage(1L);
		commentPager.getRowNum();
		List<BankBookCommentDTO> ar = bankBookCommentDAO.getCommentList(commentPager);
		assertNotEquals(0, ar.size());
	}

	//@Test
	public void setCommentAddTest()throws Exception{
		BankBookCommentDTO bankBookCommentDTO = new BankBookCommentDTO();
		bankBookCommentDTO.setWriter("reply");
		bankBookCommentDTO.setContents("contents");
		bankBookCommentDTO.setBookNum(16601941121345L);
		
		
		int result = bankBookCommentDAO.setCommentAdd(bankBookCommentDTO);
		
		assertEquals(1, result);
		
	}


}
