package com.lgy.ShoppingMall.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.lgy.ShoppingMall.dto.Gu_CartDto;
import com.lgy.ShoppingMall.dto.MemDto;
import com.lgy.ShoppingMall.dto.MemberDto;
import com.lgy.ShoppingMall.dto.PProductDto;
import com.lgy.ShoppingMall.service.PurchaseProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PurchaseController {
	@Autowired
	private PurchaseProductService service;
	
	
//	//테스트용 상품 선택 메소드
//	@RequestMapping("/select")
//	public String productSelect(@RequestParam HashMap<String, String> param, Model model) {
//		log.info("@# productSelect start");
////		param.put("procode", "1");
//		PProductDto dto = service.productSelect(param);
//		model.addAttribute("ProductView", dto);
//		return "select";
//	}
	
	
//	주문페이지 이동
	@RequestMapping(value="/orderPage")
	public String orderPage(@RequestParam HashMap<String, String> param, Model model, HttpSession  session) {
	    log.info("@# orderPage start");
	    log.info("@# param =>" + param);
	    String procode = param.get("procode");
	    MemDto getid = (MemDto) session.getAttribute("dto");
        log.info("@# 마이페이지 세션 getid "+ getid);
        log.info("세션에서 받은 id : " + getid.getId());
        param.put("userid", getid.getId());
             

//      상세페이지에서 오는 경우
        
    	PProductDto dto = service.productSelect(param);
        ArrayList<Gu_CartDto> list = service.selectFromCart(param);
        log.info("list 값 => " + list);
        model.addAttribute("proimg", dto.getProimg()); //for each 돌면서 dto.get proimg 받아와서 사진 처리
        model.addAttribute("orderPro", list);
        
        

  
//	    PProductDto dto = service.productSelect(param);
//	    model.addAttribute("order", dto);
	    
	    param.put("id", getid.getId());
	    param.put("userid", getid.getId());
		MemberDto memdto = service.memberAddr(param);
		String[] hp = memdto.getHp().split("-");
		log.info("회원 정보 확인 ==> " + memdto);
		log.info("회원 정보 확인 ==> " + hp[1]);
		log.info("회원 정보 확인 ==> " + hp[2]);
		model.addAttribute("cartcode",param.get("cartcode"));
		model.addAttribute("userid", getid.getId());
		model.addAttribute("procode", param.get("procode"));
		model.addAttribute("hp1",hp[1]);
		model.addAttribute("hp2",hp[2]);
		model.addAttribute("addr",memdto);
	    
//		log.info("qtyqtyqtyqtyqty => " + dto.getProqty());
	    log.info("@# orderPage end");
	    return "orderPage";
	}
	
	@RequestMapping("/test")
	public void test(@RequestParam(value = "order[]") List<String> order, Gu_CartDto cartDto) {
		String cartcode = "";
		
		for (String i : order) {
			cartcode = i;
			log.info("testtesttest ==> " + cartcode);
		}
	}
	
//	@RequestMapping("/cartDelete")
////	public int cartDelete(@RequestParam(value = "removeCh[]") List<String> removeArray, HashMap<String, String> param, Gu_CartDto cartDto) {
//	public int cartDelete(@RequestParam(value = "removeCh[]") List<String> removeArray, Gu_CartDto cartDto) {
//		log.info("@# controller cartDelete start");
//		
//		int result = 0;
//		String cartcode = "";
//		
//		for (String i : removeArray) {
////			log.info("####@@@@@@ removeArray ==>"+removeArray);
//			cartcode = i;
//			cartDto.setCartcode(cartcode);
//			log.info("####@@@@@@ cartDto ==>"+cartDto);
//			service.cartDelete(cartDto);
//			result = 1;
//		}
//		log.info("@# controller cartDelete end");
////		log.info("####@@@@@@  result==>"+result);
//		return result;	
//	}	

//	장바구니 체크
	@ResponseBody
	@RequestMapping("/checkCart")
	public String  checkCart(@RequestParam HashMap<String, String> param, HttpSession session) {		
		log.info("@# checkCart start");
		MemDto getid = (MemDto) session.getAttribute("dto");
        log.info("@# 마이페이지 세션 getid "+ getid);
        log.info("세션에서 받은 id : " + getid.getId());
		//임시 아이디
//		param.put("userid", "test2");
        param.put("userid", getid.getId());
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
		
		log.info("@#$# 카트코드 테스트 입니다 => " + param);
//		장바구니 번호 받아오기
//		select cartcode from cart where userid = '~' and procode = '!'
		CheckCartDto dto = service.checkCartCode(param);
		log.info(dto.getCartcode());
		param.put("cartcode", dto.getCartcode());
		log.info("@#@#@#@#@#@ checkcart ==> " + dto.getCartcode());
		
//		param 에 cartcode put
		
//		주문정보 저장
		log.info("@#@#@#@#@#@#@#@@# 주문 저장 #@#@#@#@#@#@#");
		service.productOrd(param);
		
		param.put("payprice", param.get("totalprice")); //주문 총가격 -> 결제가격
		param.put("paycode", param.get("code")); //결제번호
		
//		상품 수량 업데이트
		log.info("@#@#@#@#@#@#@#@@# 상품 수량 업데이트 #@#@#@#@#@#@#");
		
		
		log.info("2312312313 => "+ param.get("amount") + param.get("procode"));
		
		param.put("proqty", param.get("amount"));
		service.proqtyUpdate(param);
		
		
//		결제정보저장
		log.info("@#@#@#@#@#@#@#@@# 결제정보 저장 #@#@#@#@#@#@#");
		service.pay(param);
//		
		param.put("pocode", param.get("code"));
		param.put("status", "2");
		
//		상품 출고에 저장
		log.info("@#@#@#@#@#@#@#@@# 상품 출고에 저장 #@#@#@#@#@#@#");
//		param.put("proqty", param.get("amount"));
		log.info("@# productOrd param => " + param);
		service.productOut(param);
		log.info("@#@#@#@#@#@#@#@@##@#@#@#@#@#@#");
//		

//		
//  	장바구니 업데이트 결제여부 
//		ispaid 1 
		log.info("@#@#@#@#@#@#@#@@# 장바구니 업데이트 결제여부 #@#@#@#@#@#@#");
		service.cartUpdate(param);
		

		
		log.info("@# productOrd end");
	}
	
	//결제 안함
	@RequestMapping("/cancel")
	public String cancel() {
		log.info("@#cancel");
//		return "redirect:orderView";
		return "redirect:mainPage";
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
	public String ShoppingCart(@RequestParam HashMap<String, String> param, Model model, HttpSession session) {
		log.info("shoppingCart start");
		MemDto getid = (MemDto) session.getAttribute("dto");
        log.info("@# 마이페이지 세션 getid "+ getid);
        log.info("세션에서 받은 id : " + getid.getId());
		param.put("userid", getid.getId());
		ArrayList<PProductDto> list = service.CartView(param);
		
		log.info("리스트 출력 : " + list);
		
		String size = String.valueOf(list.size());
		model.addAttribute("size", size);
		model.addAttribute("list", list);
		log.info("list ==>" + list);
		
		return "ShoppingCart";
//		return "cartTest";
	}
	
	
//	상품 골라 가져오기
//	@ResponseBody
//	@RequestMapping("/your-url")
//	public ArrayList<Gu_CartDto> processFormData(@RequestBody Gu_CartDto[] formData) {
//	    // 전송된 form 데이터를 처리하는 로직을 구현
//	    ArrayList<Gu_CartDto> cart = new ArrayList<Gu_CartDto>();
//
//	    for (Gu_CartDto data : formData) {
//	        Gu_CartDto newData = new Gu_CartDto(null, null, data.getProcode(), 0, 0, 0, data.getColor(), data.getPsize(), 0, null, null, null, null, null, 0, null, null);
//	        cart.add(newData);
//	    }
//	    
////	    ArrayList<Gu_CartDto> caDto = new ArrayList<Gu_CartDto>();
////	    log.info("cart => " + cart);
////	    Gu_CartDto gu_CartDto = new Gu_CartDto();
////	    for (Gu_CartDto Dto : cart) {
////	    	gu_CartDto = Dto;
////	    	caDto.add(service.caCheck(gu_CartDto));
////		}
//	    
//	    log.info("formdata : " + formData);
//	    ArrayList<String> list = new ArrayList<String>();
//	    for (Gu_CartDto data : formData) {
//	        // 데이터를 이용하여 원하는 동작 수행
//	        String color = data.getColor();
//	        String size = data.getPsize();
//	        log.info("@#@ color ==> " + color);
//	        log.info("@#@ size ==> " + size);
//	        list.add(color);
//	        list.add(size);
//	    }
//	    log.info("@#@# list => " + list);
//
//	    return cart;
//	}	
	
	
	
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
