package com.project.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.pro.dao.*;
import com.project.pro.vo.*;

@Service
public class InfoService {
	
	@Autowired
	InfoDAO iDAO;
	
	// InfoAC List
	public List<InfoVO> getAC_List() throws Exception {
		return iDAO.getACList();
	}
}
