package com.iu.home.bankbookMembers;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BankbookMembersDAO {
	
	@Autowired
	private SqlSession sqlSession;
	//join
	public int setJoin(String userName)throws Exception{
		return 1;
	} 
	
	//login
	public Object getLogin(String userName)throws Exception{
		return null;
	}
	
	//search
	public List<Object> getSearch(String search)throws Exception{
		ArrayList<Object> ar = new ArrayList<Object>();
		return ar;
		
	}
	
	

}
