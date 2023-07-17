package com.lgy.ShoppingMall.controller;
//회원관리
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.Member2Dto;
import com.lgy.ShoppingMall.dto.MemberDto;
import com.lgy.ShoppingMall.dto.pageDto;
import com.lgy.ShoppingMall.service.MembermgmtService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/mem_mgmt")
public class MembermgmtController {
	
	@Autowired
	private MembermgmtService membermgmtService;
	
	@RequestMapping("/memberList")
	public String memberList(Model model, Criteria cri) {
		log.info("@@@### memberList");
		log.info("@# cri===>"+cri);
		
		//회원 목록 조회
		ArrayList<Member2Dto> memberList = membermgmtService.memberList(cri);
		
 		int total = 0;
 		try {
 			total = Integer.parseInt(memberList.get(0).getCount());
		} catch (Exception e) {
		}
		
		log.info("@@@### memberList"+memberList);
		model.addAttribute("memberList", memberList);
		model.addAttribute("pageMaker", new pageDto(total, cri));
		
		return "mem_mgmt/memberList";
	}
	
	@RequestMapping("/membermgmt_view")
	public String membermgmtView(@RequestParam HashMap<String, String> param, Model model) {
		//회원 상세 정보 조회
		log.info("@#@#@# idididididid"+param);
		Member2Dto dto = membermgmtService.membermgmtView(param);
		model.addAttribute("membermgmt_view", dto);
		
		return "mem_mgmt/membermgmt_view";
	}
	
	@RequestMapping("/membermgmtModify")
	public String membermgmtModify(@RequestParam HashMap<String, String> param) {
		//회원 정보 수정
		membermgmtService.membermgmtModify(param);
		
		return "redirect:/mem_mgmt/memberList";
	}
	
	@RequestMapping("/searchList")
	public String searchList(Model model, Criteria cri) {
		// 검색 결과 목록 조회
		log.info("@@@### search"+cri);
		
		ArrayList<Member2Dto> searchList = membermgmtService.searchList(cri);
		
		int total = 0;
 		try {
 			total = Integer.parseInt(searchList.get(0).getCount());
		} catch (Exception e) {
		}
		
		log.info("@@@### memberList"+searchList);
		model.addAttribute("memberList", searchList);
		model.addAttribute("pageMaker", new pageDto(total, cri));
		
		log.info("@@@### searchList"+searchList);
		
		return "mem_mgmt/memberList";
	}
	
	
	@RequestMapping("/membermgmtDelete")
	public String membermgmtDelete(@RequestParam HashMap<String, String> param) {
		// 회원 삭제
		membermgmtService.membermgmtDelete(param);
		
		return "redirect:/mem_mgmt/memberList";
	}
}
