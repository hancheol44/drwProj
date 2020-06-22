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
	public void boardWrite(BoardVO bVO, String memid) throws Exception{
		String ct = bVO.getBdct();
		String tt = bVO.getBdtt();
		String bd = bVO.getBdbd();
		
		System.out.println("ct : " + ct);
		System.out.println("tt : " + tt);
		System.out.println("bd : " + bd);
		bVO.setBdct(ct);
		bVO.setBdtt(tt);
		bVO.setBdbd(bd);
		bVO.setMemid(memid);
		bDAO.write(bVO);
		
	}

	
}
