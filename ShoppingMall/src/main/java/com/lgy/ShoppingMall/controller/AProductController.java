package com.lgy.ShoppingMall.controller;
//상품등록
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.pageDto;
import com.lgy.ShoppingMall.dto.AProductDto;
import com.lgy.ShoppingMall.service.AProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/product")
public class AProductController {

	 	@Autowired
		private AProductService prService;

	 	@RequestMapping("/productList")
	 	public String productList(Model model, Criteria cri) {
	 		log.info("@# ProductController.productList() start");
			log.info("@# cri===>"+cri);
	 		
	 		// 상품 목록을 가져옴
	 		ArrayList<AProductDto> productList = prService.productList(cri);
	 		
	 		int total = 0;
	 		try {
	 			total = Integer.parseInt(productList.get(0).getCount());
			} catch (Exception e) {
			}
	 		
	 		model.addAttribute("productList", productList);
	 		model.addAttribute("pageMaker", new pageDto(total, cri));
	 		
	 		log.info("@# ProductController.productList() end");
	 		
	 		return "product/productList";
	 	}

	 	@RequestMapping("/register")
		public String register(@RequestParam HashMap<String, String> param) {
			log.info("@# ProductController.register() start");

			// 상품 등록 서비스 호출
			prService.register(param);
			
			String lastProCode = prService.lastProCode();
			log.info("@#@#String" + lastProCode);
			
			//proCode를 직접(한번 더 조회해서 String으로 담아서 !!!!!!!!!!) param 에 넣어줌
			param.put("proCode", lastProCode);
			
			prService.productOpColorRegister(param);
			prService.productOpSizeRegister(param);
			
			log.info("@# ProductController.register() end");

			
			return "redirect:/product/productList";
		}
	 	
	 	@RequestMapping("/register_view")
	 	public String registerView() {
	 	    return "product/register_view";
	 	}

		@RequestMapping("/product_view")
		public String productView(@RequestParam HashMap<String, String> param, Model model) {
			log.info("@# ProductController.productView() start");
			
			// 상품 조회 및 카테고리 조인 정보 가져옴
			AProductDto dto = prService.productView(param);
			model.addAttribute("product_view", dto);

			log.info("@# ProductController.productView() end");

			return "product/product_view";
		}

		@RequestMapping("/productModify")
		public String productModify(@RequestParam HashMap<String, String> param) {
			log.info("@# ProductController.productModify() start");

			// 상품 수정 서비스 호출
			prService.productModify(param);
			prService.productOpColorModify(param);
			prService.productOpSizeModify(param);
			
			log.info("@# ProductController.productModify() end");

			return "redirect:/product/productList";
		}

		@RequestMapping("/productDelete")
		public String productDelete(@RequestParam HashMap<String, String> param) {
			log.info("@# ProductController.productDelete() start");

			// 상품 삭제 서비스 호출
			prService.productDelete(param);

			log.info("@# ProductController.productDelete() end");

			return "redirect:/product/productList";
		}
}
