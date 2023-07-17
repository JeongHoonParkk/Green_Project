package com.lgy.ShoppingMall.dto;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemDto {
	/*=======================================================================================
		로그인 및 회원가입 구현
		작성자   |    개발 및 수정 일자    |    수정 내용
		김효진          23-06-16            MemDto 로그인 및 회원가입 구현
	=========================================================================================*/
	private String id;
	private String pwd;
	private String name;
	private String hp;
	private String email;
	private String sms;
	private String emails;
//=======================================================================
}
