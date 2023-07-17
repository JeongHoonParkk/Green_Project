package com.lgy.ShoppingMall.dao;

import java.util.HashMap;

import com.lgy.ShoppingMall.dto.Member2Dto;

public interface MyPageDao {
	//로그인 정보 가져옴
	public Member2Dto loginYn(HashMap<String, String> param);
	
	//조회
	public Member2Dto myPageView(HashMap<String, String> param);
	
	//수정
	public void myPageModify(HashMap<String, String> param);
	
	//비밀번호 확인
	public Member2Dto memberPassword(HashMap<String, String> param);
	
	//탈퇴
	public void memberDelete(HashMap<String, String> param);
}
