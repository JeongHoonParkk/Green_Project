package com.lgy.ShoppingMall.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgy.ShoppingMall.dto.*;
import com.lgy.ShoppingMall.service.*;

import lombok.extern.slf4j.Slf4j;

/* ======================================================
ProudctController

  개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용
  박동명                     23-06-19           
====================================================== */ 
@Controller
@Slf4j
public class MainController {
	
	@Autowired
	private ProductService service;
	
	@RequestMapping("/main")
	public String main(Model model) {
		log.info("@# Controller.main");
		
//		return "main";
		return "mainPage";
	}
	
	@RequestMapping("/ProductList")
	public String ProductList(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# Controller.ProductList");
		
		ArrayList<ProductDto> ProductList = service.ProductList(param);
		model.addAttribute("ProductList", ProductList);
		
		return "ProductList";
	}
	
	@RequestMapping("/ProductView")
	public String ProductView(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# Controller.ProductView");
		
		ProductDto dto = service.ProductView(param);
		model.addAttribute("ProductView", dto);
		
		return "ProductView";
	}
	
	@RequestMapping("/search")
	public String search(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# CMainController.search");
		
		
		
		return "";
	}
	
}











