package com.lgy.ShoppingMall.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductOutDto {
	private int pocode;
	private String ordercode;
	private int procode;
	private int amount;
	private int status;
	private Timestamp outdate;
	private String cartcode;
}
