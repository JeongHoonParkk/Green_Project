package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.AProductDao;
import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.AProductDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("AProductService")
public class AProductServiceImpl implements AProductService{
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public ArrayList<AProductDto> productList(Criteria cri) {
		log.info("@# ProductServiceImpl.productList(Criteria cri) start");
		log.info("@# cri ===>"+cri);
		
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
//		ArrayList<ProductDto> productlist = dao.productList();
		
		log.info("@# ProductServiceImpl.productlist(Criteria cri) end");
//		return productlist;
		return dao.productList(cri);
	}

	@Override
	public void register(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.register() start");
		
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		dao.register(param);
		
		log.info("@# ProductServiceImpl.register() end");
	}

	@Override
	public AProductDto productView(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.productView() start");
		
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		AProductDto dto = dao.productView(param);
		
		log.info("@# ProductServiceImpl.productView() end");
		return dto;
	}

	@Override
	public void productModify(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.productModify() start");
		
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		dao.productModify(param);
		
		log.info("@# ProductServiceImpl.productModify() end");
	}

	@Override
	public void productDelete(HashMap<String, String> param) {
		log.info("@# ProductServiceImpl.productDelete() start");
		
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		dao.productDelete(param);
		
		log.info("@# ProductServiceImpl.productDelete() end");
	}

	@Override
	public void productOpColorRegister(HashMap<String, String> param) {
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		
		dao.productOpColorRegister(param);
	}

	@Override
	public void productOpSizeRegister(HashMap<String, String> param) {
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		
		dao.productOpSizeRegister(param);
	}

	@Override
	public void productOpColorModify(HashMap<String, String> param) {
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		dao.productOpColorModify(param);
	}

	@Override
	public void productOpSizeModify(HashMap<String, String> param) {
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		dao.productOpSizeModify(param);
	}

	@Override
	public String lastProCode() {
		AProductDao dao = sqlsession.getMapper(AProductDao.class);
		
		return dao.lastProCode();
	}
	
}
