package com.iu.home.board.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.board.impl.BoardDTO;
import com.iu.home.board.impl.BoardService;
@Service
public class NoticeService implements BoardService{
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public List<BoardDTO> getList(Long page) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Service page : "+page);
		
		Long perPage=10L;// 한페이지에 출력할 목록의 갯수
		// 페이지에 15개씩 출력 기준
		// page			startRow		lastRow
		// 1			1				5
		// 2			6				10
		// 3			11				15
		Long startRow=(page-1)*perPage+1;
		Long lastRow=page*perPage;
		
		System.out.println("StartRow : "+startRow);
		System.out.println("LastRow  : "+lastRow);
		Map<String, Long> map= new HashMap<String, Long>();
		map.put("startRow", startRow);
		map.put("lastRow", lastRow);
		
		/*************************
		 * 
		 * */
		
		
		
		
		
		return noticeDAO.getList(map);
	}

	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.getDetail(boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.setAdd(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.setUpdate(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return noticeDAO.setDelete(boardDTO);
	}
	

}
