package com.lgy.ShoppingMall.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDto {
	private String ordercode;//주문번호
	private String userid;//회원아이디
	private String name;//수취인
	private String postcode;//우편번호
	private String addr;//기본주소
	private String etcaddr;//상세주소
	private String hp;//휴대폰
	private String memo;//배송메세지
	private Timestamp orderdate;//주문날짜
	private String totalprice;//총 결제 금액
	private String status;//상태
	private Timestamp changedate;//변경
	
}
