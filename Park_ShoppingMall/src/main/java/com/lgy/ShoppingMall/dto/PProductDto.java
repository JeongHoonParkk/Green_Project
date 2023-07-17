package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PProductDto {
	private int procode;//상품코드
	private int catecode;//카테고리 코드
	private String proname;//상품이름
	private String proprice;//상품가격
	private String prosale;//상품세일가
	private String proinfo;//상품정보
	private String proyn;//판매여부
	private int proqty;//판매수량
	private String prothumb;//상품썸네일
	private String proimg;//상품이미지
}
