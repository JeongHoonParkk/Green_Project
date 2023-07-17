package com.lgy.ShoppingMall.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Gu_PQnaReDto {
	private int recode;//문의답댓번호
	private int qnacode;//문의글번호fk
	private String recont;//문의답변내용
	private Timestamp redate;//문의작성일
}
