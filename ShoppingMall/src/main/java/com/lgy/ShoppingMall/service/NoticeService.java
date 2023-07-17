package com.lgy.ShoppingMall.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.ShoppingMall.dto.Criteria;
import com.lgy.ShoppingMall.dto.NoticeDto;

public interface NoticeService {
	//공지사항 목록 조회
	 public ArrayList<NoticeDto> list(Criteria cri);

    //공지사항 작성
    public void write(HashMap<String, String> param);

    //공지사항 내용 조회
    public NoticeDto contentView(HashMap<String, String> param);

    //공지사항 수정
    public void noticeModify(HashMap<String, String> param);

    //공지사항 삭제
    public void noticeDelete(HashMap<String, String> param);
}
