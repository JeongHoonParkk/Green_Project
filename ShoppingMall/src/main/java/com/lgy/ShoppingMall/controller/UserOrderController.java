package com.lgy.ShoppingMall.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.MemDto;
import com.lgy.ShoppingMall.dto.pageDto;
import com.lgy.ShoppingMall.dto.ProductOrdDto;
import com.lgy.ShoppingMall.service.UserOrderService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/userOrder")
public class UserOrderController {
	@Autowired
	private UserOrderService userOrderService;
	
	@RequestMapping("/userOrderList")
	public String userOrderList(@RequestParam HashMap<String, String> param, Model model, Criteria cri, HttpSession  session) {
		log.info("@# UserOrderController.userOrderList() start");
		log.info("@# cri===>"+cri);
		
		
		MemDto getid = (MemDto) session.getAttribute("dto");
	    log.info("@# 세션 : "+ getid);
	    log.info("세션에서 받은 id : " + getid.getId());
		param.put("userid", getid.getId());
		
		ArrayList<ProductOrdDto> userOrderList = userOrderService.userOrderList(param, cri);
		log.info("@@###userOrderList"+userOrderList);
		
		int total = 0;
 		try {
 			total = Integer.parseInt(userOrderList.get(0).getCount());
		} catch (Exception e) {
		}
 		
 		model.addAttribute("userOrderList", userOrderList);
 		log.info("@#@#@#userOrderList"+userOrderList);
 		model.addAttribute("pageMaker", new pageDto(total, cri));
 		
 		log.info("@# UserOrderController.userOrderList() end");
 		
 		return "userOrder/userOrderList";
	}
	
	@RequestMapping("/userOrder_view")
	public String userOrderView(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@@## userOrder_view");
		
		log.info("@#@#userOrder_view"+param);
		ArrayList<ProductOrdDto> dto = userOrderService.userOrderView(param);
		log.info("@@@####dto"+dto);
		model.addAttribute("userOrder_view", dto);
		
		return "userOrder/userOrder_view";
	}

//	  @RequestMapping("/userOrderCancel")
//	    public String userOrderCancel(@RequestParam HashMap<String, String> param) {
//		  	log.info("@# UserOrderController.userOrderCancel() start");
//	        log.info("@# param ===>" + param);
//	        
//	        userOrderService.userOrderCancel(param);
//	        
//	        log.info("@# UserOrderController.userOrderCancel() end");
//	        
//	        return "redirect:/userOrder/userOrderList";
//	    }
//	 
//	  @RequestMapping("/userOrderDelete")
//	    public String userOrderDelete(@RequestParam HashMap<String, String> param) {
//	        log.info("@# UserOrderController.userOrderDelete() start");
//	        log.info("@# param ===>" + param);
//	        
//	        userOrderService.userOrderDelete(param);
//	        
//	        log.info("@# UserOrderController.userOrderDelete() end");
//	        
//	        return "redirect:/userOrder/userOrderList";
//	    }
}
