package com.iu.home.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.iu.home.bankMembers.BankMembersDTO;
import com.iu.home.board.impl.BoardDTO;

public class WriterCheckInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
		String method = request.getMethod(); 
		
		if(method.equals("POST")) {
			return ;
		}
				
		//로그인 사용자의 ID와 DTO의 작성자가 일치하는가?
		
		//로그인 사용자 정보
		BankMembersDTO bankMembersDTO = (BankMembersDTO)request.getSession().getAttribute("member");
		
		//DTO
		Map<String, Object>  map = modelAndView.getModel();
		
		BoardDTO boardDTO  = (BoardDTO)map.get("boardDTO");
		
		if(!bankMembersDTO.getUserName().equals(boardDTO.getWriter())) {
			modelAndView.setViewName("common/result");
			modelAndView.addObject("result", 1);
			modelAndView.addObject("message", "작성자만 수정이 가능");
			modelAndView.addObject("url", "./list.iu");
			System.out.println("작성자가 아님");
		}
		
		System.out.println("Writer Interceptor");
		
	}

}
