package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/* ======================================================
CartDto
장바구니 정보를 나타내는 dto
  개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용
  구나현       구나현         	23-07-06           cartList join을 위해 product컬럼추가
====================================================== */ 

//@ToString
//@Getter
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Gu_CartDto {
//	cart 테이블
//	private int cartcode;//장바구니번호pk => String으로 변경
	private String cartcode;//장바구니번호pk
	private String userid;//회원아이디fk(회원)
	private int procode;//상품번호fk(상품)
	private int amount;//수량
	private int ischecked;//체크여부
	private int ispaid;//결제여부
	private String color;//회원아이디fk(회원)
	private String psize;//회원아이디fk(회원)
	
//	상품(장바구니 join하기 위해)
//	private int procode;
	private int catecode;
	private String proname;
	private String proprice;
	private String prosale;
	private String proinfo;
	private String proyn;
	private int proqty;
	private String prothumb;
	private String proimg;
	
//	private String pName;//상품이름
//	private int pPrice;//상품원가격
//	private int pSale;//상품할인가격
	
//	DB 테이블에는 없고 cartDto
//	private int saleTotal;//할인 적용한 상품한개에 대한 판매가격(ex>상품1|수량2| = nn,nnn)
//	private int totalPrice;//할인 적용된 상품여러개 최종결제금액
	
//	saleTotal, totalPrice 두 변수값 변경을 원할 경우 이 메서드를 통해서만 가능함(그래서 setter메서드 추가 x)
//	public void initsaleTotal() {
//		this.saleTotal = (this.pPrice * (1-this.pSale));
//		this.totalPrice = this.pSale*this.amount;
//	}
	
	
//	public void setCartcode(String cartcode) {
//		this.cartcode = cartcode;
//	}
//	public void setUserid(String userid) {
//		this.userid = userid;
//	}
//	public void setProcode(int procode) {
//		this.procode = procode;
//	}
//	public void setAmount(int amount) {
//		this.amount = amount;
//	}
//	public void setIschecked(int ischecked) {
//		this.ischecked = ischecked;
//	}
//	public void setIspaid(int ispaid) {
//		this.ispaid = ispaid;
//	}
//	public void setpName(String pName) {
//		this.pName = pName;
//	}
//	public void setpPrice(int pPrice) {
//		this.pPrice = pPrice;
//	}
//	public void setpSale(int pSale) {
//		this.pSale = pSale;
//	}
	
}