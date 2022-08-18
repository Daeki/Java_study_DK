package com.iu.home.bankBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;


@Repository
public class BankBookDAO implements BookDAO {
	
	public int setDelete(BankBookDTO bankBookDTO)throws Exception{
		return 0;
		
	}
	
	@Override
	public int setUpdate(BankBookDTO bankBookDTO) throws Exception {
		
		return 0;
	}
	
	

	@Override
	public int setBankBook(BankBookDTO bankBookDTO) throws Exception {
		return 0;
	}

	@Override
	public ArrayList<BankBookDTO> getList() throws Exception {
		return null;
	}

	@Override
	public int setChangeSale(BankBookDTO bankBookDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BankBookDTO getDetail(BankBookDTO bankBookDTO) throws Exception {
		
		
		return null;
	}

}
