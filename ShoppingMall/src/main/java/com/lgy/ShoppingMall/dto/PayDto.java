package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayDto {
	private int paycode;//결제번호
	private String ordercode;//주문번호
	private int payprice;//결제가격
	private int payment;//결제수단
	private int ispaid;//결제여부
	private int isrefund;//환불여부
}
