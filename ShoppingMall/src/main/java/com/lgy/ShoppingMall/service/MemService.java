package com.lgy.ShoppingMall.service;

import java.util.HashMap;

import com.lgy.ShoppingMall.dto.*;

public interface MemService {
	/*=======================================================================================
		  로그인&간편로그인(카카오톡) 및 회원가입&간편회원가입(카카오톡) 구현
		  작성자   |    개발 및 수정 일자    |    수정 내용
		  김효진          23-06-16   	  	  로그인, 회원가입, 회원가입 완료페이지 구현 완료
		  김효진          23-06-19   	  	  회원가입	아이디 중복확인 기능 구현 중
		  김효진          23-06-22   	  	  회원가입	아이디 중복확인 기능 오류 해결
		  김효진          23-06-26      	  로그인	아이디 찾기 기능 구현 완료
		  김효진          23-06-27      	  로그인	비밀번호 찾기 기능 구현 완료 (하루 2회 제한)
		  김효진                        	  회원가입 중복검사 기능 구현 완료(전화번호, 이메일)
		  김효진          23-06-29			  카카오톡 회원가입 데이터베이스 삽입 완료
		  김효진          23-06-30			  카카오톡 로그인 구현 & session 유지    
	=========================================================================================*/
	/* 로그인 */
	public MemDto loginYn(HashMap<String, String> param);
	/* 회원가입 */
	public void write(HashMap<String, String> param);
	/* 이메일 중복 체크 */
	public int emailCheck(MemDto dto) throws Exception;
	/* 전화번호 중복 체크 */
	public int hpCheck(MemDto dto) throws Exception;
	/* 아이디 찾기 */
	public String find_id(HashMap<String, String> param); //name hp
	/* 비밀번호  찾기 */
	public String find_pwd(HashMap<String, String> param); //name hp
	/* 카카오톡 */
	public void registerkakao(HashMap<String, String> param);
	public String sameId(String id);
	public MemDto memInfo(String id);
//=======================================================================
	
	/*=======================================================================================
	  작성자   |    개발 및 수정 일자    |    수정 내용
	  조은유			23-06-22         
	  조은유			23-07-03           관리자 로그인 설정
	=========================================================================================*/
	/* 아이디 중복 체크 */
	public int idCheck(MemDto dto) throws Exception;
	/* 관리자 로그인 */
	public adminDto adminloginYn(HashMap<String, String> param);
}
