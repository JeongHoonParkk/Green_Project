package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.NoticeDao;
import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.NoticeDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
//	public ArrayList<NoticeDto> list() {
	public ArrayList<NoticeDto> list(Criteria cri) {
		log.info("@# NoticeServiceImpl.list() start");
		
		NoticeDao dao = sqlSession.getMapper(NoticeDao.class);
//		ArrayList<NoticeDto> list = dao.list();
		
		log.info("@# NoticeServiceImpl.list() end");
		
//		return list;
		return dao.list(cri);
	}

	@Override
	public void write(HashMap<String, String> param) {
		log.info("@# NoticeServiceImpl.write() start");
		
		NoticeDao dao = sqlSession.getMapper(NoticeDao.class);
		dao.write(param);

		log.info("@# NoticeServiceImpl.write() end");
	}

	@Override
	public NoticeDto contentView(HashMap<String, String> param) {
		log.info("@# NoticeServiceImpl.contentView() start");
		
		NoticeDao dao = sqlSession.getMapper(NoticeDao.class);
		NoticeDto dto = dao.contentView(param);
		
		log.info("@# BServiceImpl.contentView() end");
		
		return dto;
	}

	@Override
	public void noticeModify(HashMap<String, String> param) {
		log.info("@# BServiceImpl.noticeModify() start");
		
		NoticeDao dao = sqlSession.getMapper(NoticeDao.class);
		dao.noticeModify(param);
		
		log.info("@# BServiceImpl.noticeModify() end");
	}

	@Override
	public void noticeDelete(HashMap<String, String> param) {
		log.info("@# BServiceImpl.noticeDelete() start");
		
		NoticeDao dao = sqlSession.getMapper(NoticeDao.class);
		dao.noticeDelete(param);
		
		log.info("@# BServiceImpl.noticeDelete() end");
	}
	
}
