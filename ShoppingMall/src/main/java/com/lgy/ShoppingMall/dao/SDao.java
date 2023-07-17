package com.lgy.ShoppingMall.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.Gu_CartDto;
import com.lgy.ShoppingMall.dto.Gu_PQnaDto;
import com.lgy.ShoppingMall.dto.Gu_PQnaReDto;
import com.lgy.ShoppingMall.dto.PRevCmtDto;
import com.lgy.ShoppingMall.dto.PRevDto;
import com.lgy.ShoppingMall.dto.CoProductDto;

public interface SDao {
//	리뷰목록
	public ArrayList<PRevDto> revList();
//	리뷰작성
	public void revWrite(HashMap<String, String> param);
//	리뷰이미지파일업로드
//	조회수 증가
	public int revUpHit(HashMap<String, String> param);
//	조회수 -1(댓작성 후 조회수 안올라가게 임시로 함)
	public int revDownHit(HashMap<String, String> param);
//	리뷰보기
	public PRevDto revContentView(HashMap<String, String> param);
//	리뷰수정(원글보기)23.06.23 -> revContentView를 revModify에서 쓰니까 글 수정하고 글보기로 돌아갈때마다 조회수가 1씩 증가해서 추가
//	public PRevDto revModifyView(HashMap<String, String> param);
//	리뷰수정
	public void revModify(HashMap<String, String> param);
//	리뷰삭제
	public void revDelete(HashMap<String, String> param);
//	리뷰에 단 댓글 조회
	public ArrayList<PRevCmtDto> revCmtList(HashMap<String, String> param);
//	리뷰 댓글 작성
	public void revCmtWrite(HashMap<String, String> param);
//	리뷰댓글 수정(원글보기)23.06.23 -> 댓글 수정 눌렀을때 원래 작성했던 내용
//	public PRevCmtDto revCmtModifyView(HashMap<String, String> param);
//	리뷰 댓글 수정
	public void revCmtModify(HashMap<String, String> param);
//	리뷰 댓글 삭제
	public void revCmtDelete(HashMap<String, String> param);
/* 230621================================================================*/
//	문의목록
	public ArrayList<Gu_PQnaDto> PQnaList();
//	문의작성
	public void PQnaWrite(HashMap<String, String> param);
//	문의이미지파일업로드
//	문의보기
	public Gu_PQnaDto PQnaContentView(HashMap<String, String> param);
//	문의수정(원글보기)23.06.23 -> revContentView를 revModify에서 쓰니까 글 수정하고 글보기로 돌아갈때마다 조회수가 1씩 증가해서 추가
//	public Gu_PQnaDto PQnaModifyView(HashMap<String, String> param);
//	문의수정
	public void PQnaModify(HashMap<String, String> param);
//	문의삭제
	public void PQnaDelete(HashMap<String, String> param);
//	문의에 단 댓글 조회
	public ArrayList<Gu_PQnaReDto> PQnaCmtList(HashMap<String, String> param);
//	문의 댓글 작성
	public void PQnaCmtWrite(HashMap<String, String> param);
//	문의댓글 수정(원글보기)23.06.23 -> 댓글 수정 눌렀을때 원래 작성했던 내용
//	public Gu_PQnaReDto PQnaCmtModifyView(HashMap<String, String> param);
//	문의 댓글 수정
	public void PQnaCmtModify(HashMap<String, String> param);
//	문의 댓글 삭제
	public void PQnaCmtDelete(HashMap<String, String> param);
/* 230623 장바구니================================================================*/
//	장바구니 목록
	public ArrayList<Gu_CartDto> cartList();//장바구니 목록
	public int cartAdd(HashMap<String, String> param) throws Exception;//장바구니 추가
	public void cartDelete(Gu_CartDto cartDto);//장바구니 삭제
	public void cartModifyAmount(HashMap<String, String> param);//장바구니 수량 수정
	public List<Gu_CartDto> cartCheck(HashMap<String, String> param);//장바구니 중복상품 확인
//	상품상세페이지 
	public CoProductDto ProductView(HashMap<String, String> param);//상품상세보기
	public List<CoProductDto> productColor(HashMap<String, String> param);//상품옵션 색상
	public List<CoProductDto> productSize(HashMap<String, String> param);//상품옵션 색상
	
//	페이징
	public int getTotalCount();
	public ArrayList<PRevDto> revListPaging(Criteria cri);//Criteria 객체를 이용해서 페이징 처리	
}
