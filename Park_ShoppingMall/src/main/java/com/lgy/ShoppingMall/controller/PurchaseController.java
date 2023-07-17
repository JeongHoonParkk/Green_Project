package com.lgy.ShoppingMall.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lgy.ShoppingMall.dto.CheckCartDto;
import com.lgy.ShoppingMall.dto.MemberDto;
import com.lgy.ShoppingMall.dto.PProductDto;
import com.lgy.ShoppingMall.service.PurchaseProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PurchaseController {
	@Autowired
	private PurchaseProductService service;
	
	//테스트용 상품 선택 메소드
	@RequestMapping("/select")
	public String productSelect(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# productSelect start");
		param.put("procode", "101");
		PProductDto dto = service.productSelect(param);
		model.addAttribute("ProductView", dto);
		return "select";
	}
	
	
//	주문페이지 이동
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/orderPage", method=RequestMethod.POST)
	public String orderPage(@RequestParam HashMap<String, String> param, Model model, HttpSession  session) {
	    log.info("@# orderPage start");
	    log.info("@# param =>" + param);
	    String procode = param.get("procode");
	    
	    // 세션에서 이미 장바구니에 추가된 상품 목록을 가져옴
	    ArrayList<String> cartItems = (ArrayList<String>) session.getAttribute("cartItems");
	    
	    if (cartItems == null || !cartItems.contains(procode)) {
	        // 장바구니에 해당 상품이 없는 경우에만 추가
	        service.addCart(param);
	        
	        // 장바구니에 추가된 상품 목록을 세션에 저장
	        if (cartItems == null) {
	            cartItems = new ArrayList<>();
	        }
	        cartItems.add(procode);
	        session.setAttribute("cartItems", cartItems);
	    }
	    
	    // 나머지 로직 수행
	    PProductDto dto = service.productSelect(param);
	    model.addAttribute("order", dto);
	    
	    param.put("id", "qwerty123");
		MemberDto memdto = service.memberAddr(param);
		String[] hp = memdto.getHp().split("-");
		log.info("회원 정보 확인 ==> " + memdto);
		log.info("회원 정보 확인 ==> " + hp[1]);
		log.info("회원 정보 확인 ==> " + hp[2]);
		model.addAttribute("hp1",hp[1]);
		model.addAttribute("hp2",hp[2]);
		model.addAttribute("addr",memdto);
	    
	    log.info("@# orderPage end");
	    return "orderPage";
	}

//	장바구니 체크
	@ResponseBody
	@RequestMapping("/checkCart")
	public String  checkCart(@RequestParam HashMap<String, String> param) {		
		log.info("@# checkCart start");
		
		//임시 아이디
		param.put("userid", "qwerty123");
		log.info("@# 카트코드 확인용 =>" + service.checkCart(param));
		log.info("@# 상품코드 확인 =>" + param.get("procode"));
		String check = "";
		ArrayList<CheckCartDto> list = service.checkCart(param);
		log.info("@# list 끝났어");
		// 상품 분기처리용 기능
		for (CheckCartDto dto : list) { 
		    String procode = dto.getProcode();	   
//		    해당 상품이 장바구니에 없을 때
		    if (!procode.equals(param.get("procode"))) {	
//			해당 상품이 장바구니에 있을 때
			}else if (procode.equals(param.get("procode"))) {
				check = "notnull";
			}
		}
		log.info("@# ===>" + check);
		log.info("@# checkCart end");
		return check;
	}
	
	
//	상품주문
	//이동시 상품 출고 테이블 값 넣기
	@RequestMapping(value="/productOrd", method=RequestMethod.POST)
	public void productOrd(@RequestParam HashMap<String, String> param) {	
		log.info("@# productOrd start");
		
//		주문정보 저장
		service.productOrd(param);
		
		
		log.info("결제번호" + param.get("code"));
		param.put("payprice", param.get("totalprice")); //주문 총가격 -> 결제가격
		param.put("paycode", param.get("code")); //결제번호
		
//		결제정보저장
		service.pay(param);

		log.info("@# productOrd end");
	}
	
	//결제 안함
	@RequestMapping("/cancel")
	public String cancel(HttpServletRequest request) {
		log.info("@#cancel");
//		return "redirect:orderView";
		return "redirect:" + request.getHeader("Referer");
	}
	
	//주문 완료페이지
	@RequestMapping( value="/orderComplete", method=RequestMethod.POST)
	public String orderComplete(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# orderComplete start");
				
		model.addAttribute("ordercode", param.get("ordercode"));
		model.addAttribute("orderdate", param.get("orderdate"));
		
		log.info("@# orderComplete end");
		return "orderComplete";
	}
	//주문 상세 페이지
	@RequestMapping("/orderView")
	public String orderView() {
		log.info("@# orderView");
		return "orderView";
	}
	
	//장바구니 이동
	@RequestMapping("/ShoppingCart")
	public String ShoppingCart(@RequestParam HashMap<String, String> param,Model model) {
		log.info("shoppingCart start");
		param.put("userid", "qwerty123");
		ArrayList<PProductDto> list = service.CartView(param);
		String size = String.valueOf(list.size());
		model.addAttribute("size", size);
		model.addAttribute("list", list);
		log.info("list ==>" + list);
		
//		return "ShoppingCart";
		return "cartTest";
	}
	
//	@RequestMapping("/cartView")
//	public String CartView(@RequestParam HashMap<String, String> param, Model model) {
//		log.info("CartView start");
//		param.put("userid", "qwerty1234");
//		ArrayList<ProductDto> list = service.CartView(param);
//		String size = String.valueOf(list.size());
//		param.put("size", size);
//		log.info("asdf a" + param);
//		model.addAttribute("list", list);
//		return "redirect:ShoppingCart";
//	}
	
}
