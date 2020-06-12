package com.project.pro.dao;

import java.util.ArrayList;
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
	public SalesVO saDetail(SalesVO sVO) {
		return sqlSession.selectOne("sSQL.saDetail", sVO);
	}
	
	// sales write
	public SalesVO saWrite(SalesVO sVO) {
		sqlSession.insert("sSQL.saWrite", sVO);
		return sVO;
	}
}
