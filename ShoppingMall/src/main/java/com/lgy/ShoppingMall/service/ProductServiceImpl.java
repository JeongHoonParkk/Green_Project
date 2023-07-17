package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.*;
import com.lgy.ShoppingMall.dto.*;

import lombok.extern.slf4j.Slf4j;

/* ======================================================
ProudctService

  개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용
  박동명                     23-06-19           
====================================================== */ 
@Slf4j
@Service("ProductService")
public class ProductServiceImpl implements ProductService{
	@Autowired
	private SqlSession sqlSession;
	
	 
	@Override
//	public ArrayList<ProductDto> list() {
	public ArrayList<ProductDto> ProductList(HashMap<String, String> param) {
		log.info("@# BServiceImpl.ProductList() start");
		
		ProductDao dao = sqlSession.getMapper(ProductDao.class);
//		ArrayList<ProductDto> list = dao.list();
		ArrayList<ProductDto> ProductList = dao.ProductList(param);
		
		log.info("@# BServiceImpl.ProductList() end");
		
		return ProductList;
	}

	@Override
	public ProductDto ProductView(HashMap<String, String> param) {
		log.info("@# BServiceImpl.ProductView() start");
		
		ProductDao dao = sqlSession.getMapper(ProductDao.class);
		ProductDto dto = dao.ProductView(param);
		
		log.info("@# BServiceImpl.ProductView() end");
		
		return dto;
	}
	
}
