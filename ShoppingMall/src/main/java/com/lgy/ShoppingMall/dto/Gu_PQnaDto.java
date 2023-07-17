package com.lgy.ShoppingMall.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Gu_PQnaDto {
	private int qnacode;//문의글번호
	private int procode;//상품번호
	private String qnatitle;//문의제목
	private String qnacont;//문의내용
	private Timestamp qnadate;//문의작성일
//	private String qnaauth;//문의 작성자
	private String id;//아이디
}
