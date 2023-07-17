package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class adminDto {
	
	/*=======================================================================================
	  작성자   |    개발 및 수정 일자    |    수정 내용
	  조은유          23-07-03      	   MemDto 로그인 및 회원가입 구현     
	=========================================================================================*/
	
	private String id;
	private String pwd;
	private String admin;
	
}
