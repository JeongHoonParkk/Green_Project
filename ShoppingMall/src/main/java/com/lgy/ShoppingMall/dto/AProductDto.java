package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AProductDto {
	private int proCode; //상품번호
	private int cateCode; //카테고리 코드
	private String proName; //상품이름
	private int proPrice; //상품가격
	private int proSale; //상품세일가
	private String proInfo; //상품정보
	private String proYN; //판매여부
	private int proQty; //판매수량
	private String proThumb; //상품썸네일
	private String proImg;	 // 상품상세이미지
	
	//색상
	private String color1;
	private String color2;
	private String color3;
	
	//사이즈
	private String size1;
	private String size2;
	private String size3;
	
	private String count;
}