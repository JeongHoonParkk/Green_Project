package com.lgy.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@ToString
public class Criteria {

	private int pageNum; //페이지 번호
	private int amount; //페이지당 글 갯수
	
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
//		type 이 없으면 빈 스트링 객체, 있으면 분리
		return type == null ? new String[] {} : type.split("");
	}
}