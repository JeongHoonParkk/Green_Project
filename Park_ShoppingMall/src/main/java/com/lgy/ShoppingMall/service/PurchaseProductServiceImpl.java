package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.PProductDao;
import com.lgy.ShoppingMall.dto.CheckCartDto;
import com.lgy.ShoppingMall.dto.MemberDto;
import com.lgy.ShoppingMall.dto.OrderDto;
import com.lgy.ShoppingMall.dto.PProductDto;
import com.lgy.ShoppingMall.dto.ProductOutDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("ProductService")
public class PurchaseProductServiceImpl implements PurchaseProductService{
	@Autowired
	private SqlSession sqlSession;
	
	//상품선택
	@Override
	public PProductDto productSelect(HashMap<String, String> param) {//상품상세페이지
		log.info("@# ProductServiceImpl.productSelect start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		PProductDto dto = dao.productSelect(param);
		log.info("@# ProductServiceImpl.productSelect end");
		return dto;
	}
	//상품주문
	@Override
	public void productOrd(HashMap<String, String> param) {//상품주문
		log.info("@# ProductServiceImpl.productOrd start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		dao.productOrd(param);
		log.info("@# ProductServiceImpl.productOrd end");
	}
	//결제
	@Override
	public void pay(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.pay start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		dao.pay(param);
		log.info("@# ProductServiceImpl.pay end");
		
	}
	//출고
	@Override
	public void productOut(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.productOut start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		dao.productOut(param);
		log.info("@# ProductServiceImpl.productOut end");
	}

//	장바구니 담기
	@Override
	public void addCart(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.addCart start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		dao.addCart(param);
		log.info("@# ProductServiceImpl.addCart end");
	}
//	장바구니 비어있는지 확인
	@Override
	public ArrayList<CheckCartDto> checkCart(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.checkCart start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		ArrayList<CheckCartDto> list = dao.checkCart(param);
		return list;
	}
	//장바구니 확인 테스트용
	@Override
	public ArrayList<PProductDto> CartView(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.CartView start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		ArrayList<PProductDto> list = dao.CartView(param);
		return list;
	}
	//회원 주소 확인용
	@Override
	public MemberDto memberAddr(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.memberAddr start");
		PProductDao dao = sqlSession.getMapper(PProductDao.class);
		MemberDto dto = dao.memberAddr(param);
		return dto;
	}
	
	
//	//주문상세
//	@Override
//	public ArrayList<OrderDto> orderView() {
//		log.info("@# ProductServiceImpl.orderView start");
//		ProductDao dao = sqlSession.getMapper(ProductDao.class);
//		ArrayList<OrderDto> list = dao.orderView();
//		log.info("@# ProductServiceImpl.orderView end");
//		return list;
//	}
//	//출고상세
//	@Override
//	public ArrayList<ProductOutDto> outView() {
//		log.info("@# ProductServiceImpl.outView start");
//		ProductDao dao = sqlSession.getMapper(ProductDao.class);
//		ArrayList<ProductOutDto> list = dao.outView();
//		log.info("@# ProductServiceImpl.outView end");
//		return list;
//	}
}
