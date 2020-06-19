package com.project.pro.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.pro.dao.SalesDAO;
import com.project.pro.vo.SalesVO;

@Service("SalesService")
public class SalesService {
	
	@Autowired
	private SalesDAO sDAO;
	
	// Sales List
	public List<SalesVO> getSaList() throws Exception {
		return sDAO.getSaList();
	}
	// Sales Detail
	public SalesVO saDetail(SalesVO sVO) throws Exception {
		return sDAO.saDetail(sVO);
	}
	// Sales Bcnt
	public void saBcnt(int bpno) {
		sDAO.saBcnt(bpno);
	}
	
}
