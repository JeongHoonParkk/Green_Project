package com.lgy.ShoppingMall.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/* ======================================================
ProudctDto
상품 정보를 나타내는 dto
  개발자   |   수정자   |    개발 및 수정 일자    |    수정 내용
  박동명       박동명           23-06-19           product 테이블 전속성 추가
  박동명       구나현           23-06-30           PRODUCT_OP_COLOR, SIZE 테이블 컬럼추가
====================================================== */ 

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CoProductDto {
	private int procode;
	private int catecode;
	private String proname;
	private String proprice;
	private String prosale;
	private String proinfo;
	private String proyn;
	private int proqty;
	private String prothumb;
	private String proimg;
	
	//추가
	private String color1;
	private String color2;
	private String color3;
	
	private String size1;	
	private String size2;	
	private String size3;
	
	private List<String> colorOptions;
    private List<String> sizeOptions;
    
    public void setColorOptions(List<CoProductDto> colorDtoList) {
        colorOptions = new ArrayList<>();
        for (CoProductDto colorDto : colorDtoList) {
            colorOptions.add(colorDto.getColor1());
            colorOptions.add(colorDto.getColor2());
            colorOptions.add(colorDto.getColor3());
        }
    }

    public void setSizeOptions(List<CoProductDto> sizeDtoList) {
        sizeOptions = new ArrayList<>();
        for (CoProductDto sizeDto : sizeDtoList) {
            sizeOptions.add(sizeDto.getSize1());
            sizeOptions.add(sizeDto.getSize2());
            sizeOptions.add(sizeDto.getSize3());
        }
    } 
}
