package com.iu.home.bankBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.util.CommentPager;


@Service
public class BankBookService {
	
	
	//-----------------  Comment -----------------------------
	@Autowired
	private BankBookCommentDAO bankBookCommentDAO;
	
	
	
	public List<BankBookCommentDTO> getCommentList(CommentPager commentPager)throws Exception{
		commentPager.getRowNum();
		Long totalCount = bankBookCommentDAO.getCommentListTotalCount(commentPager);
		commentPager.makePage(totalCount);
		return bankBookCommentDAO.getCommentList(commentPager);
	}
	
	public int setCommentAdd(BankBookCommentDTO bankBookCommentDTO)throws Exception{
		return bankBookCommentDAO.setCommentAdd(bankBookCommentDTO);
	}
	
	
	
	//---------------------------------------------------------
	@Autowired
	private BankBookDAO bankBookDAO;
	
	public int setDelete(BankBookDTO bankBookDTO)throws Exception{
		return bankBookDAO.setDeleteBook(bankBookDTO);
		
	}
	
	public int setUpdate(BankBookDTO bankBookDTO) throws Exception {
		return bankBookDAO.setUpdate(bankBookDTO);
	}
	

	public int setBankBook(BankBookDTO bankBookDTO) throws Exception {
		
		return bankBookDAO.setBankBook(bankBookDTO);
	}

	public List<BankBookDTO> getList() throws Exception {
		return bankBookDAO.getList();
	}

	public int setChangeSale(BankBookDTO bankBookDTO) throws Exception {
		// TODO Auto-generated method stub
		return bankBookDAO.setChangeSale(bankBookDTO);
	}

	public BankBookDTO getDetail(BankBookDTO bankBookDTO) throws Exception {
		
		return bankBookDAO.getDetail(bankBookDTO);
	}

}
