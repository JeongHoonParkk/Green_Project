package com.lgy.ShoppingMall.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDto {
	private int noticode; 
	private String notiauth; 
	private String notititle; 
	private String noticont; 
	private Date notidate;
	
	private String count;
}