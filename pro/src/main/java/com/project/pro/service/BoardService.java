package com.project.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.pro.dao.BoardDAO;
import com.project.pro.vo.BoardVO;


@Service("BoardService")
public class BoardService {
	
	private BoardDAO bDAO;
	


	@Autowired
	public void setbDAO(BoardDAO bDAO) {
		this.bDAO = bDAO;
	}

	// Board List
	public List<BoardVO> getList() throws Exception {
		return bDAO.getList();
	}
	
	// Board Detail
	public BoardVO bDetail(BoardVO bVO) throws Exception{
		return bDAO.bDetail(bVO);
	}
	
	// Board Write
	public void boardWrite(BoardVO bVO) throws Exception{
		String bdct = bVO.getBdct();
		String bdtt = bVO.getBdbd();
		String bdbd = bVO.getBdbd();
		String memid = bVO.getMemid();
		bVO.setBdct(bdct);
		bVO.setBdtt(bdtt);
		bVO.setBdbd(bdbd);
		bVO.setMemid(memid);
		BoardDAO.write(bVO);
		
	}

	
}
