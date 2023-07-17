package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.ShoppingMall.dto.ProductDto;

public interface ProductService {
//	public void execute(Model model);
/* ======================================================== 
ProudctService 인터페이스

  개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용
  박동명                      23-06-16             
===========================================================*/
//	public ArrayList<ProductDto> list();
	public ArrayList<ProductDto> ProductList(HashMap<String, String> param);
	public ProductDto ProductView(HashMap<String, String> param);
}
