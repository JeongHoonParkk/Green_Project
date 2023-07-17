package com.lgy.ShoppingMall.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.ProductOrdDto;

public interface OrderDao {
	//주문 목록
	public ArrayList<ProductOrdDto> orderListPaging (Criteria cri);
	
	//주문 상세 목록 조회
	public ProductOrdDto orderView(HashMap<String, String> param);
	
	//검색
	public ArrayList<ProductOrdDto> ordSearchList(Criteria cri);
	
	//수정
	public void orderModify(HashMap<String, String> param);
	
	
	//주문 총 갯수
//	public ProductOrdDto OrderTotal (HashMap<String, String> param);
//	public int OrderTotal (HashMap<String, String> param);
	
//	//주문 정보
//	public void orderInfo(HashMap<String, String> param);
//	
//	//주문 상세 정보
//	public void orderInfo_Details(HashMap<String, String> param);
//	
	
}
