package com.project.pro.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.pro.dao.BoardDAO;
import com.project.pro.vo.BoardVO;


@Service("BoardService")
public class BoardService {
	
	@Autowired
	private BoardDAO bDAO;
	
	// Board List
	public List<BoardVO> getList() throws Exception {
		return bDAO.getList();
	}
	
	// Board Detail
	public BoardVO bDetail(BoardVO bVO) throws Exception{
		return bDAO.bDetail(bVO);
	}

	
}
