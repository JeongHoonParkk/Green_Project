package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.MembermgmtDao;
import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.Member2Dto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("MembermgmtService")
public class MembermgmtServiceImpl implements MembermgmtService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<Member2Dto> memberList(Criteria cri) {
		log.info("@# MembermgmtServiceImpl.memberList() start");
		log.info("@# cri ===>"+cri);

		MembermgmtDao dao = sqlSession.getMapper(MembermgmtDao.class);
//		ArrayList<MemberDto> memberList = dao.memberList();
		
		log.info("@# MembermgmtServiceImpl.memberList() end");
		
		return dao.memberList(cri);
	}

	@Override
	public void membermgmtModify(HashMap<String, String> param) {
		log.info("@# MembermgmtServiceImpl.membermgmtModify() start");
		
		MembermgmtDao dao = sqlSession.getMapper(MembermgmtDao.class);
		dao.membermgmtModify(param);
		
		log.info("@# MembermgmtServiceImpl.membermgmtModify() end");
	}


	@Override
	public Member2Dto membermgmtView(HashMap<String, String> param) {
		log.info("@# MembermgmtServiceImpl.membermgmtView() start");
		
		MembermgmtDao dao = sqlSession.getMapper(MembermgmtDao.class);
		Member2Dto dto = dao.membermgmtView(param);
		
		log.info("@# MembermgmtServiceImpl.membermgmtView() end");
		
		return dto;
	}

	@Override
	public ArrayList<Member2Dto> searchList(Criteria cri) {
		log.info("@# MembermgmtServiceImpl.searchList() start");

		MembermgmtDao dao = sqlSession.getMapper(MembermgmtDao.class);
		ArrayList<Member2Dto> searchList = dao.searchList(cri);
		
		log.info("@# MembermgmtServiceImpl.searchList() end");
		
		return searchList;
	}
	


	@Override
	public void membermgmtDelete(HashMap<String, String> param) {
		log.info("@# MembermgmtServiceImpl.membermgmtDelete() start");
		
		MembermgmtDao dao = sqlSession.getMapper(MembermgmtDao.class);
		dao.membermgmtDelete(param);
		
		log.info("@# MembermgmtServiceImpl.membermgmtDelete() end");
	}

}
