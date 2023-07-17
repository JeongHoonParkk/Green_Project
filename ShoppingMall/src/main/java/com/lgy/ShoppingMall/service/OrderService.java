package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.ProductOrdDto;

public interface OrderService {
	//주문 목록
	public ArrayList<ProductOrdDto> orderListPaging(Criteria cri);
	
	//주문 상세 목록 조회
	public ProductOrdDto orderView(HashMap<String, String> param);
	
	//검색
	public ArrayList<ProductOrdDto> ordSearchList(Criteria cri);
	
	//수정
	public void orderModify(HashMap<String, String> param);
}
