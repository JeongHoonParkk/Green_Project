package com.lgy.ShoppingMall.controller;
//마이페이지
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lgy.ShoppingMall.dto.Member2Dto;
import com.lgy.ShoppingMall.dto.MemberDto;
import com.lgy.ShoppingMall.service.MyPageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	
	@RequestMapping("/login_yn")
	public String login_yn(@RequestParam HashMap<String, String> param, HttpSession session, RedirectAttributes attr, Model model) {
	    log.info("@# login_yn start");
	    log.info("@@@###"+param.get("id"));
	    log.info("@@@###"+param.get("pwd"));
	    Member2Dto dto = myPageService.loginYn(param);

	    log.info("@# loginyn 전달된 데이터들 "+dto);
        
        if(dto == null) {  // 일치하지 않는 아이디, 비밀번호 입력 경우
	        int result = 0;
	        attr.addFlashAttribute("result", result);
	        return "redirect:/mypage/login";
	    }

	    // 아이디와 비밀번호가 일치하는 경우
	    session.setAttribute("dto", dto);
	    model.addAttribute("dto", dto);
	    return "mypage/login_ok"; // 로그인 성공 시 login_ok 페이지로 리다이렉트
	}

	@RequestMapping("/myPage_view")
	public String myPageView(@RequestParam("id") String id, Model model) {
		HashMap<String, String> param = new HashMap<String, String>();
		log.info("$$$$"+id);
		if (!id.equals(null)) {
			log.info("$$$들어옴");
			param.put("id", id);
		}
		log.info("@#@#"+param);
		Member2Dto dto = myPageService.myPageView(param);
		model.addAttribute("myPage_view", dto);
		return "mypage/myPage_view";
	}
		
//	@RequestMapping("/myPageModify")
//	public String myPageModify(@RequestParam HashMap<String, String> param, HttpSession session, Model model) {
//		log.info("@# myPageModify");
//			
//		myPageService.myPageModify(param);
//		session.invalidate();
//			
//		return "redirect:myPage_view?id=" + param.get("id");
//	}
	
	@RequestMapping("/myPageModify")
	public String myPageModify(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# myPageModify");
	    log.info("@@@###"+ param);
	    
	    param.put("id", param.get("id"));
	    param.put("pwd", param.get("pwd"));
	    myPageService.myPageModify(param);
	    
	    log.info("@# myPageView");
	    Member2Dto dto = myPageService.myPageView(param);
	    log.info("@#@#dto"+dto);
		model.addAttribute("myPage_view", dto);
//		return "mypage/myPage_view";
		return "mypage/myPage_view";
	    
	    
//	    MemberDto dto = (MemberDto) session.getAttribute("dto");
//	    myPageService.memberPassword(param);
//
//	    log.info("@@@@###"+param.get("pwd1"));
//	    log.info("@@@@###"+param.get("pwd2"));
//	    if (!param.get("pwd1").equals(param.get("pwd2"))) {
//	        attr.addFlashAttribute("error", "비밀번호가 일치하지 않습니다.");
//	        return "redirect:/myPage_view?id=" + param.get("id");
//	    }
//	    
//	    String dbpwd = myPageService.memberPassword(param).getPwd();
//	    if (dbpwd.equals(param.get("pwd1"))) {
//	    	myPageService.myPageModify(param);			
////	    	새로운 데이터베이스 조회
//	    	session.invalidate();
////	    	session.setAttribute("dto", dto);
//	    	
//	    	return "redirect:/myPage_view?id=" + param.get("id");
//		}
//	    
//	    return "redirect:/myPage_view?id=" + param.get("id");
	}

	// 회원 탈퇴 get
	@RequestMapping("/memberDeleteView")
	public String memberDeleteView(@RequestParam HashMap<String, String> param, Model model){
		log.info("@@@### memberDeleteView"+param);
		model.addAttribute("id", param.get("id"));
		return "mypage/memberDeleteView";
	}
		
	// 회원 탈퇴 post
	@RequestMapping("/memberDelete")
	public String memberDelete(@RequestParam HashMap<String, String> param, RedirectAttributes attr){
			
		log.info("@memberDelete###param"+param);
		Member2Dto dto = myPageService.memberPassword(param);

		String pwd = dto.getPwd();
		log.info("@###dto"+dto);

		String check_pwd = param.get("pwd");
		log.info("@###check_pwd"+check_pwd);

		if (pwd.equals(check_pwd)) {
			myPageService.memberDelete(param);
			return "mypage/login";
		}
		
			attr.addAttribute("id", param.get("id"));
			return "redirect:/mypage/memberDeleteView";
		}
}