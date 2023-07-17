package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {
	private String id;//아이디
	private String pwd;//패스워드
	private String email;//이메일
	private String hp;//휴대폰
	private String name;//이름
	private String pcode;//우편번호
	private String loadaddr;//도로명주소
	private String lotaddr;//지번주소
	private String extraddr;//추가주소
	private String etcaddr;//상세주소
	private String sms;
}
