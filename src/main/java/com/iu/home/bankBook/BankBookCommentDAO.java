package com.iu.home.bankBook;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.CommentPager;

@Repository
public class BankBookCommentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.iu.home.bankBook.BankBookCommentDAO.";
	
	public List<BankBookCommentDTO> getCommentList(CommentPager commentPager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getCommentList", commentPager);
	}
	
	public int setCommentAdd(BankBookCommentDTO bankBookCommentDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setCommentAdd", bankBookCommentDTO);
	}
	
	

}
