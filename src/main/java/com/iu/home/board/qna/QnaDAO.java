package com.iu.home.board.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.board.impl.BoardDAO;
import com.iu.home.board.impl.BoardDTO;
import com.iu.home.board.impl.BoardFileDTO;
import com.iu.home.util.Pager;
@Repository
public class QnaDAO implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.iu.home.board.qna.QnaDAO.";
	
	@Override
	public int setAddFile(BoardFileDTO boardFileDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"setAddFile", boardFileDTO);
	}
	
	public int setReplyAdd(QnaDTO qnaDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setReplyAdd", qnaDTO);
	}
	
	public int setStepUpdate(QnaDTO qnaDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setStepUpdate", qnaDTO);
	}

	@Override
	public Long getCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}

	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {
		
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"getDetail", boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"setAdd", boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"setUpdate", boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE+"setDelete", boardDTO);
	}
	
	
	

}
