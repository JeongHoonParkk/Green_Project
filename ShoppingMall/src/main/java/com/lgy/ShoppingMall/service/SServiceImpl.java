package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.print.attribute.standard.PrinterMessageFromOperator;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.ShoppingMall.dao.SDao;
import com.lgy.ShoppingMall.dto.*;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("SService")
public class SServiceImpl implements SService{
	
	@Autowired
	private SqlSession sqlSession;
	
//	리뷰목록
	@Override
	public ArrayList<PRevDto> revList() {
		log.info("@# SServiceImpl.revList() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<PRevDto> list = dao.revList();
		
		log.info("@# SServiceImpl.revList() end");
		
		return list;
	}
//	리뷰 작성
	@Override
	public void revWrite(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revWrite() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.revWrite(param);
		
		log.info("@# SServiceImpl.revWrite() end");		
	}

//	리뷰 조회수 올리기
	@Override
	public int revUpHit(HashMap<String, String> param) {
		SDao dao = sqlSession.getMapper(SDao.class);
		return dao.revUpHit(param);
	}
//	조회수 -1(댓작성 후 조회수 안올라가게 임시로 함)
	@Override
	public int revDownHit(HashMap<String, String> param) {
		SDao dao = sqlSession.getMapper(SDao.class);
		return dao.revDownHit(param);
	}
	
//	리뷰보기
	@Override
	public PRevDto revContentView(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revContentView() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
//		revUpHit(param); //글 수정하고 돌아갈때마다 조회수가 3씩 증가함
		PRevDto dto = dao.revContentView(param);
		
		log.info("@# SServiceImpl.revContentView() end");
		
		return dto;
	}

//	리뷰수정(원글보기)23.06.23
//	@Override
//	public PRevDto revModifyView(HashMap<String, String> param) {
//		log.info("@# SServiceImpl.revModifyView()리뷰수정(원글보기) start");
//		
//		SDao dao = sqlSession.getMapper(SDao.class);
//		PRevDto dto = dao.revModifyView(param);
//		
//		log.info("@# SServiceImpl.revModifyView()리뷰수정(원글보기) end");
//		
//		return dto;
//	}
	
//	리뷰수정
	@Override
	public void revModify(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revModify()리뷰수정 start");

		SDao dao = sqlSession.getMapper(SDao.class);
		dao.revModify(param);
		
		log.info("@# SServiceImpl.revModify()리뷰수정 end");		
	}
	
//	리뷰 삭제
	@Override
	public void revDelete(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revDelete() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.revDelete(param);
		
		log.info("@# SServiceImpl.revDelete() end");
	}
	
//	리뷰에 단 댓글 조회
	@Override
	public ArrayList<PRevCmtDto> revCmtList(HashMap<String, String> param) {
log.info("@# SServiceImpl.revCmtList()리뷰댓글조회 start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<PRevCmtDto> dto = dao.revCmtList(param);
		
		log.info("@# SServiceImpl.revCmtList()리뷰댓글조회 end");
		
		return dto;
	}
	
//	리뷰 댓글 작성
	@Override
	public void revCmtWrite(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revCmtWrite(댓작성) start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.revCmtWrite(param);
		
		log.info("@# SServiceImpl.revCmtWrite(댓작성) end");	
	}
	
//	리뷰댓글 수정(원글보기)23.06.23 -> 댓글 수정 눌렀을때 원래 작성했던 내용
//	@Override
//	public PRevCmtDto revCmtModifyView(HashMap<String, String> param) {
//		log.info("@# SServiceImpl.revCmtModifyView()리뷰수정원댓보기 start");
//		
//		SDao dao = sqlSession.getMapper(SDao.class);
//		PRevCmtDto dto = dao.revCmtModifyView(param);
//		
//		log.info("@# SServiceImpl.revModifyView()리뷰수정원댓보기 end");
//		System.out.println("댓글내용 ==> "+dto.getCmtcont());
//		
//		return dto;
//	}
	
//	리뷰 댓글 수정
	@Override
	public void revCmtModify(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revCmtModify()댓수정 start");

		SDao dao = sqlSession.getMapper(SDao.class);
		dao.revCmtModify(param);
		
		log.info("@# SServiceImpl.revCmtModify()댓수정 end");	
		
	}
	
//	리뷰 댓글 삭제
	@Override
	public void revCmtDelete(HashMap<String, String> param) {
		log.info("@# SServiceImpl.revDelete() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.revCmtDelete(param);
		
		log.info("@# SServiceImpl.revDelete() end");
	}
/* 230621============================================================================== */
//	문의목록
	@Override
	public ArrayList<Gu_PQnaDto> PQnaList() {
		log.info("@# SServiceImpl.PQnaList() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<Gu_PQnaDto> list = dao.PQnaList();
		
		log.info("@# SServiceImpl.PQnaList() end");
		
		return list;
	}
//	문의작성
	@Override
	public void PQnaWrite(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaWrite() start");
		log.info("$$$ param : " + param);
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.PQnaWrite(param);
		
		log.info("@# SServiceImpl.PQnaWrite() end");
	}
	
//	문의보기
	@Override
	public Gu_PQnaDto PQnaContentView(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaContentView() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
//		revUpHit(param); //글 수정하고 돌아갈때마다 조회수가 3씩 증가함
		Gu_PQnaDto dto = dao.PQnaContentView(param);
		
		log.info("@# SServiceImpl.PQnaContentView() end");
		
		return dto;
	}
	
//	문의수정(원글보기)23.06.23
//	@Override
//	public Gu_PQnaDto PQnaModifyView(HashMap<String, String> param) {
//		log.info("@# SServiceImpl.PQnaModifyView()문의수정(원글보기) start");
//		
//		SDao dao = sqlSession.getMapper(SDao.class);
//		Gu_PQnaDto dto = dao.PQnaModifyView(param);
//		
//		log.info("@# SServiceImpl.PQnaModifyView()문의수정(원글보기) end");
//		
//		return dto;
//	}
	
//	문의수정
	@Override
	public void PQnaModify(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaModify()문의수정 start");

		SDao dao = sqlSession.getMapper(SDao.class);
		dao.PQnaModify(param);
		
		log.info("@# SServiceImpl.PQnaModify()문의수정 end");
	}
	
//	문의삭제
	@Override
	public void PQnaDelete(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaDelete() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.PQnaDelete(param);
		
		log.info("@# SServiceImpl.PQnaDelete() end");
	}
//	문의에 단 댓글 조회
	@Override
	public ArrayList<Gu_PQnaReDto> PQnaCmtList(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaCmtList()문의댓글조회 start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<Gu_PQnaReDto> dto = dao.PQnaCmtList(param);
		
		log.info("@# SServiceImpl.PQnaCmtList()문의댓글조회 end");
		
		return dto;
	}
	
//	문의 댓글 작성
	@Override
	public void PQnaCmtWrite(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaCmtWrite(댓작성) start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.PQnaCmtWrite(param);
		
		log.info("@# SServiceImpl.PQnaCmtWrite(댓작성) end");	
	}
	
//	문의댓글 수정(원글보기)23.06.23
//	@Override
//	public Gu_PQnaReDto PQnaCmtModifyView(HashMap<String, String> param) {
//		log.info("@# SServiceImpl.PQnaCmtModifyView start");
//		
//		SDao dao = sqlSession.getMapper(SDao.class);
//		Gu_PQnaReDto dto = dao.PQnaCmtModifyView(param);
//		System.out.println("@@@@댓글원본 수정누르면 나오는거 ===>"+dto.getRecont());
//		
//		log.info("@# SServiceImpl.PQnaCmtModifyView() end");
//		
//		return dto;
//	}
//	문의 댓글 수정
	@Override
	public void PQnaCmtModify(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaCmtModify()댓수정 start");

		SDao dao = sqlSession.getMapper(SDao.class);
		dao.PQnaCmtModify(param);
		
		log.info("@# SServiceImpl.PQnaCmtModify()댓수정 end");	
	}
//	문의 댓글 삭제
	@Override
	public void PQnaCmtDelete(HashMap<String, String> param) {
		log.info("@# SServiceImpl.PQnaCmtDelete() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.PQnaCmtDelete(param);
		
		log.info("@# SServiceImpl.PQnaCmtDelete() end");
	}
/* 230623================================================================*/

//	장바구니 추가
	@Override
	public int cartAdd(HashMap<String, String> param) {
		log.info("@# SServiceImpl.cartAdd() start");
		SDao dao = sqlSession.getMapper(SDao.class);
		
		log.info("@# SServiceImpl.cartCheck() start");
		log.info("impl add and check " + param);
		ArrayList<Gu_CartDto> cartCheck = (ArrayList<Gu_CartDto>) dao.cartCheck(param);
//		List<Gu_CartDto> cartCheck = dao.cartCheck(param);
		
//		ArrayList<Gu_CartDto> cartCheck = (ArrayList<Gu_CartDto>) dao.cartCheck(param);
		
//		if (cartCheck.get(0).getUserid().equals(param.get("userid"))
//				&&String.valueOf(cartCheck.get(0).getProcode()).equals(param.get("procode"))
//				&&cartCheck.get(0).getColor().equals(param.get("color"))
//				&&cartCheck.get(0).getPsize().equals(param.get("psize"))) {
		if (cartCheck.isEmpty()) {
			log.info("@# SServiceImpl.cartCheck() end");
			try {
				dao.cartAdd(param);
				log.info("@# SServiceImpl.cartAdd() end");
				return 1;//장바구니에 동일상품 없으면 return 1
			} catch (Exception e) {
				e.printStackTrace();
				return 0;//에러
			}
		}else if (cartCheck.get(0).getUserid().equals(param.get("userid"))
			&&String.valueOf(cartCheck.get(0).getProcode()).equals(param.get("procode"))
			&&cartCheck.get(0).getColor().equals(param.get("color"))
			&&cartCheck.get(0).getPsize().equals(param.get("psize"))){
//				&&cartCheck.get(0).getAmount() != Integer.parseInt(param.get("amount"))) {
				return 2;					
		}else {
			log.info("@# SServiceImpl.cartCheck() end");
			try {
				dao.cartAdd(param);
				log.info("@# SServiceImpl.cartAdd() end");
				return 1;//장바구니에 동일상품 없으면 return 1
			} catch (Exception e) {
				e.printStackTrace();
				return 0;//에러
			}			
		}
	}	
		

//	장바구니 목록
	@Override
	public ArrayList<Gu_CartDto> cartList() {
		log.info("@# SServiceImpl.cartList() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<Gu_CartDto> list = dao.cartList();
		for (int i = 0; i < list.size(); i++) {
			log.info("외않데.."+i+"==> "+list+"\n");
		}
		
		log.info("@# SServiceImpl.cartList() end");
		
		return list;
	}
//	장바구니 삭제
	@Override
	public void cartDelete(Gu_CartDto cartDto) {
		log.info("@# SServiceImpl.cartDelete() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		dao.cartDelete(cartDto);
		
		log.info("@# SServiceImpl.cartDelete() end");
	}
//	장바구니 수량 수정
	@Override
	public void cartModifyAmount(HashMap<String, String> param) {
		log.info("@# SServiceImpl.cartModifyCount() start");

		SDao dao = sqlSession.getMapper(SDao.class);
		dao.cartModifyAmount(param);
		
		log.info("@# SServiceImpl.cartModifyCount() end");
	}
//	장바구니 확인=> X안씀
//	@Override
//	public Gu_CartDto cartCheck(HashMap<String, String> param) {
//		log.info("@# SServiceImpl.cartCheck start");
//		
//		SDao dao = sqlSession.getMapper(SDao.class);
//		Gu_CartDto dto = dao.cartCheck(param);
//		
//		log.info("@# SServiceImpl.cartCheck() end");
//		
//		return dto;
//	}
//	상세페이지 조회
	@Override
	public CoProductDto ProductView(HashMap<String, String> param) {
		log.info("@# SServiceImpl.ProductView() start");
		SDao dao = sqlSession.getMapper(SDao.class);
		CoProductDto dto = dao.ProductView(param);
		log.info("@# SServiceImpl.ProductView() end");
		return dto;
	}
	@Override
	public List<CoProductDto> productColor(HashMap<String, String> param) {
		log.info("@# SServiceImpl.productColor() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<CoProductDto> list = (ArrayList<CoProductDto>) dao.productColor(param);
		
		log.info("@# SServiceImpl.productColor() end");
		
		return list;
	}
	@Override
	public List<CoProductDto> productSize(HashMap<String, String> param) {
		log.info("@# SServiceImpl.productSize() start");
		
		SDao dao = sqlSession.getMapper(SDao.class);
		ArrayList<CoProductDto> list = (ArrayList<CoProductDto>) dao.productSize(param);
		
		log.info("@# SServiceImpl.productSize() end");
		
		return list;
	}
//	페이징
	@Override
	public int getTotalCount() {
		log.info("@# SServiceImpl.getTotalCount() start");
		SDao dao = sqlSession.getMapper(SDao.class);
		return dao.getTotalCount();
	}
	@Override
	public ArrayList<PRevDto> revListPaging(Criteria cri) {
		log.info("@# SServiceImpl.revListPaging() start");
		log.info("@# cri ===>"+cri);
		
		SDao dao = sqlSession.getMapper(SDao.class);
//		ArrayList<PRevDto> list = dao.revList();
		
		log.info("@# SServiceImpl.revListPaging() end");
		
		return dao.revListPaging(cri);
	}
}