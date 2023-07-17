package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/* ======================================================
ProudctDto
상품 정보를 나타내는 dto
  개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용
  박동명       박동명           23-06-19           product 테이블 전속성 추가
====================================================== */ 

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto {
	private int procode;
	private int catecode;
	private String proname;
	private String proprice;
	private String prosale;
	private String proinfo;
	private String proyn;
	private int proqty;
	private String prothumb;
	private String proimg;
}
