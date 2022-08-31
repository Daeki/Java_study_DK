package com.iu.home.bankMembers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.bankAccount.BankAccountDTO;
import com.iu.home.bankAccount.BankAccountService;


@Controller 
@RequestMapping(value="/member/*")
//이 클래스는 Controller역할, 
//Container에게 이 클래스의 객체를 생성 위임
public class MemberController {
	
	@Autowired
	private BankMembersService bankMembersService;
//	@Autowired
//	private BankAccountService bankAccountService;
	
	@GetMapping("agree.iu")
	public String getAgree()throws Exception{
		return "member/agree";
	}
	
	@RequestMapping(value = "myPage.iu", method = RequestMethod.GET)
	public ModelAndView myPage(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		BankMembersDTO bankMembersDTO = (BankMembersDTO)session.getAttribute("member");
//		Map<String, Object> map = bankMembersService.getMyPage(bankMembersDTO);
//		mv.addObject("map", map);
		
		bankMembersDTO = bankMembersService.getMyPage(bankMembersDTO);
		//List<BankAccountDTO> ar = bankAccountService.getListByUserName(bankMembersDTO);
		
		//mv.addObject("list", ar);
		mv.addObject("dto", bankMembersDTO);
		
		
		mv.setViewName("member/myPage");
		return mv;
	}
	
	// annotation
	// @ : 설명+실행
	@RequestMapping(value="logout", method = RequestMethod.GET)
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	
	//  /member/login // 절대경로 작성
	@RequestMapping(value = "login.iu", method = RequestMethod.GET)
	public String login() {
		System.out.println("로그인 실행");
		return "member/login";
	}
	
	@RequestMapping(value = "login.iu", method = RequestMethod.POST)
	public String login(HttpSession session, BankMembersDTO bankMembersDTO, Model model) throws Exception {
		System.out.println("DB에 로그인 실행");
		bankMembersDTO = bankMembersService.getLogin(bankMembersDTO);
		System.out.println(bankMembersDTO);
		//HttpSession session = request.getSession();
		session.setAttribute("member", bankMembersDTO);
		
		// "redirect:다시접속할URL주소(절대경로,상대경로)"
		return "redirect:../";
	}
	
	// join  /member/join Get
	@RequestMapping(value = "join.iu", method = RequestMethod.GET)
	public String join() {
		System.out.println("조인 Get 실행");
		
		return "member/join";
	}
	
	//Post
	@RequestMapping(value = "join.iu", method = RequestMethod.POST)
	public String join(BankMembersDTO bankMembersDTO, MultipartFile photo, HttpSession session) throws Exception {
		System.out.println("조인 Post 실행");
		System.out.println(photo);
		
		System.out.println("upload 파일명 : "+photo.getOriginalFilename());
		System.out.println("upload 파라미터명 : "+photo.getName());
		System.out.println("upload 파일 크기 : "+photo.getSize());
		int result = bankMembersService.setJoin(bankMembersDTO, photo, session.getServletContext());

		
		return "redirect:./login.iu";
	}
	
	@RequestMapping(value="search.iu", method=RequestMethod.GET)
	public void getSearchByID()throws Exception{
		//ModelAndView mv = new ModelAndView();
		//mv.setViewName("member/search");
		//return mv;//"member/search";
	}
	
	@RequestMapping(value = "search.iu", method = RequestMethod.POST)
	public String getSearchByID(String search, Model model)throws Exception{
//		BankMembersDAO bankMembersDAO = new BankMembersDAO();
		List<BankMembersDTO> ar= bankMembersService.getSearchByID(search);
		
		
		model.addAttribute("list", ar);
		return "member/list";
	}

}
