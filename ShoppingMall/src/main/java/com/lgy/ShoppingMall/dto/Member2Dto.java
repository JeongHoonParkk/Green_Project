package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member2Dto {
	private String id;
	private String pwd;
	private String email;
	private String hp;
	private String name;
	private String pcode;
	private String loadaddr;
	private String lotaddr;
	private String extraaddr;
	private String etcaddr;
	private String sms;
	private String emails;

	private String count;
}
