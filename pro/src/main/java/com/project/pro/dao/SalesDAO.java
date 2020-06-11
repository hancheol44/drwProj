package com.project.pro.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.pro.vo.SalesVO;

public class SalesDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// sales list
	public List getSaList() {
		return sqlSession.selectList("sSQL.saList");
	}
	
	// sales detail
	public SalesVO saDetail(int pno) {
		return sqlSession.selectOne("sSQL.saDetail", pno);
	}
}
