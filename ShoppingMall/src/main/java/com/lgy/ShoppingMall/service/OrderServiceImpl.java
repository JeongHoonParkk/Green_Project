package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.OrderDao;
import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.ProductOrdDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("OrderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	private SqlSession sqlSession;

//페이징
	@Override
	public ArrayList<ProductOrdDto> orderListPaging(Criteria cri) {
		log.info("@# OrderServiceImpl.orderListPaging(Criteria cri) start");
		log.info("@# cri ===>"+cri);
		
		OrderDao dao = sqlSession.getMapper(OrderDao.class);

		log.info("@# OrderServiceImpl.orderListPaging(Criteria cri) end");
		
		return dao.orderListPaging(cri);
	}

	
	@Override
	public ProductOrdDto orderView(HashMap<String, String> param) {
		log.info("@# OrderServiceImpl.orderView() start");

		OrderDao dao = sqlSession.getMapper(OrderDao.class);
		ProductOrdDto dto = dao.orderView(param);
		
		log.info("@# OrderServiceImpl.orderView() end");
		
		return dto;
	}


	@Override
	public ArrayList<ProductOrdDto> ordSearchList(Criteria cri) {
		log.info("@# OrderServiceImpl.ordSearchList() start");

		OrderDao dao = sqlSession.getMapper(OrderDao.class);
		ArrayList<ProductOrdDto> ordSearchList = dao.ordSearchList(cri);
		
		log.info("@# OrderServiceImpl.ordSearchList() end");

		return ordSearchList;
	}

	@Override
	public void orderModify(HashMap<String, String> param) {
		log.info("@# OrderServiceImpl.orderModify() start");
		
		OrderDao dao = sqlSession.getMapper(OrderDao.class);
		dao.orderModify(param);
		
		log.info("@# OrderServiceImpl.orderModify() end");
	}



}
