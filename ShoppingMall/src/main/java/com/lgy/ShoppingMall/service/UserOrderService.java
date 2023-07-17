package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.ProductOrdDto;

public interface UserOrderService {
	//주문목록 조회
	public ArrayList<ProductOrdDto> userOrderList (HashMap<String, String> param,Criteria cri);
		
	//주문 상세 조회
	public ArrayList<ProductOrdDto> userOrderView(HashMap<String, String> param);
}
