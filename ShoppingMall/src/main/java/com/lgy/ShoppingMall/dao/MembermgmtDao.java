package com.lgy.ShoppingMall.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.Member2Dto;
import com.lgy.ShoppingMall.dto.MemberDto;

public interface MembermgmtDao {
	//회원 목록
	public ArrayList<Member2Dto> memberList(Criteria cri);
	
	//회원정보 조회
	public Member2Dto membermgmtView(HashMap<String, String> param);
	
	//회원 수정
	 public void membermgmtModify(HashMap<String, String> param);
	
	//회원 검색
	public ArrayList<Member2Dto> searchList(Criteria cri);
	
	//회원 삭제
	public void membermgmtDelete(HashMap<String, String> param);
}
