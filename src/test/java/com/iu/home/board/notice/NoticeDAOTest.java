package com.iu.home.board.notice;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.MyAbstractTest;
import com.iu.home.board.impl.BoardDTO;

public class NoticeDAOTest extends MyAbstractTest {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Test
	public void getListTest()throws Exception{
		 List<BoardDTO> ar = noticeDAO.getList();
		 assertEquals(0, ar.size());
		
	}
	
	@Test
	public void setAddTest()throws Exception{
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setTitle("Test");
		noticeDTO.setWriter("Writer");
		noticeDTO.setContents("Contents");
		
		int result = noticeDAO.setAdd(noticeDTO);
		assertEquals(1, result);
		
	}

}
