package com.lgy.ShoppingMall.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.NoticeDto;
import com.lgy.ShoppingMall.dto.pageDto;
import com.lgy.ShoppingMall.service.NoticeService;

import lombok.extern.slf4j.Slf4j;
//공지사항
@Controller
@Slf4j
@RequestMapping("/notice")
public class noticeController {

    @Autowired
    private NoticeService noticeService;

    @RequestMapping("/list")
//    public String list(Model model) {
    public String list(Model model, Criteria cri) {
    	log.info("@# list");
		log.info("@# cri===>"+cri);
		
        // 공지사항 리스트를 가져옴
        ArrayList<NoticeDto> list = noticeService.list(cri);
        
 		int total = 0;
 		try {
 			total = Integer.parseInt(list.get(0).getCount());
		} catch (Exception e) {
		}
//        model.addAttribute("list", list);
        
        log.info("@# list ===>"+ list);
        model.addAttribute("list", list);
        model.addAttribute("pageMaker", new pageDto(total, cri));

        return "notice/list";
    }

    @RequestMapping("/list_admin")
//  public String list(Model model) {
    public String list_admin(Model model, Criteria cri) {
	  	log.info("@# list");
	  	log.info("@# cri===>"+cri);
	  	
	  	// 공지사항 리스트를 가져옴
	  	ArrayList<NoticeDto> list = noticeService.list(cri);
	  	
	  	int total = 0;
	  	try {
	  		total = Integer.parseInt(list.get(0).getCount());
	  	} catch (Exception e) {
	  	}
	//      model.addAttribute("list", list);
	  	
	  	log.info("@# list ===>"+ list);
	  	model.addAttribute("list", list);
	  	model.addAttribute("pageMaker", new pageDto(total, cri));
	  	
	  	return "notice/list_admin";
    }
    
    @RequestMapping("/write")
    public String write(@RequestParam HashMap<String, String> param) {
        log.info("@# NoticeController.write() start");
        log.info("@#@@#@#@#@#param"+param);

        // 공지사항 작성 서비스 호출
        noticeService.write(param);

        log.info("@# NoticeController.write() end");

        return "redirect:/notice/list_admin";
    }

    @RequestMapping("/write_view")
    public String writeView() {
        return "notice/write_view";
    }

    @RequestMapping("/content_view")
    public String contentView(@RequestParam HashMap<String, String> param, Model model) {
        // 공지사항의 내용을 가져옴
        NoticeDto dto = noticeService.contentView(param);
        model.addAttribute("content_view", dto);

        return "notice/content_view";
    }

    @RequestMapping("/content_view_admin")
    public String content_view_admin(@RequestParam HashMap<String, String> param, Model model) {
    	// 공지사항의 내용을 가져옴
    	NoticeDto dto = noticeService.contentView(param);
    	model.addAttribute("content_view", dto);
    	
    	return "notice/content_view_admin";
    }
    
    @RequestMapping("/noticeModify")
    public String noticeModify(@RequestParam HashMap<String, String> param) {
        // 공지사항 수정 서비스 호출
        noticeService.noticeModify(param);

        // return "/notice/list";
        return "redirect:/notice/list_admin";
    }

    @RequestMapping("/noticeDelete")
    public String noticeDelete(@RequestParam HashMap<String, String> param) {
        // 공지사항 삭제 서비스 호출
        noticeService.noticeDelete(param);

        // return "/notice/list";
        return "redirect:/notice/list_admin";
    }
}