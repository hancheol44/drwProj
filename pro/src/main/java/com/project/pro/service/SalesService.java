package com.project.pro.service;

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
	public void saBcnt(int bpno) throws Exception {
		sDAO.saBcnt(bpno);
	}
	// Sales Write
	public SalesVO saWrite(SalesVO sVO) throws Exception {
		return sDAO.saWrite(sVO);
	}
	// Sales Delete
	public int saDelete(int spno) throws Exception {
		return sDAO.saDelete(spno);
	}
	// Sales Edit
	public SalesVO saEdit(SalesVO sVO) throws Exception {
		return sDAO.saEdit(sVO);
	}
	// Review add(ajax)
	public SalesVO reWrite(SalesVO sVO) throws Exception {
		return sDAO.reWrite(sVO);
	}
	// Review List(ajax)
	public List reList(int pno) throws Exception {
		return sDAO.reList(pno);
	}
}
