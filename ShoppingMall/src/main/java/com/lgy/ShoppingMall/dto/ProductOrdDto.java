package com.lgy.ShoppingMall.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ProductOrdDto {
	private String ordercode;
	private String userid;
	private String cartcode;
	private String name;
	private String postcode;
	private String addr;
	private String etcaddr;
	private String hp;
	private String memo;
	private Date orderdate;
	private String totalprice;
	private int status;
	private Date changdate;
	
	private String rn;
	private String count;
	
	private String proimg; //상품썸네일
	private String proThumb; //상품썸네일
	private String proName; //상품이름
	private int proPrice; //상품가격
	
	private int amount; //수량 (product_out)
	private String pocode; //상품출고번호 (product_out)
	
}