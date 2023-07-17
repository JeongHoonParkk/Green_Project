package com.lgy.ShoppingMall.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.pageDto;
import com.lgy.ShoppingMall.dto.ProductOrdDto;
import com.lgy.ShoppingMall.service.OrderService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/orderListPaging")
	public String orderListPaging(Criteria cri, Model model) {
		log.info("@# orderList");
		log.info("@# cri===>"+cri);

		ArrayList<ProductOrdDto> orderListPaging = orderService.orderListPaging(cri);
		
 		int total = 0;
 		try {
 			total = Integer.parseInt(orderListPaging.get(0).getCount());
		} catch (Exception e) {
		}
		
		log.info("@# orderListPaging ===>"+ orderListPaging);
		model.addAttribute("orderListPaging", orderListPaging);
		model.addAttribute("pageMaker", new pageDto(total, cri));

		return "order/orderList";
  }
	
	@RequestMapping("/order_view")
	public String orderView(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@@## order_view");
		
		ProductOrdDto dto = orderService.orderView(param);
		model.addAttribute("order_view", dto);
		
		return "order/order_view";
	}
	
	@RequestMapping("/ordSearchList")
	public String ordSearchList(Criteria cri, Model model) {
		log.info("@@## ordSearchList");
		
		ArrayList<ProductOrdDto> ordSearchList = orderService.ordSearchList(cri);
		
		int total = 0;
 		try {
 			total = Integer.parseInt(ordSearchList.get(0).getCount());
		} catch (Exception e) {
		}
 		
		log.info("@@## param"+cri);
		log.info("@@## param"+ordSearchList);
		model.addAttribute("pageMaker", new pageDto(total, cri));
		model.addAttribute("orderListPaging", ordSearchList);
		
		return "order/orderList";
	}
	
	@RequestMapping("/orderModify")
	public String orderModify(@RequestParam HashMap<String, String> param) {
		log.info("@@## orderModify");
		
		orderService.orderModify(param);
		
		return "redirect:/order/orderListPaging";
	}
}
