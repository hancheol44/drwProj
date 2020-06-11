package com.project.pro.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public BoardDAO() {
	}

	public List getList() {
		return sqlSession.selectList("bSQL.boardList");
	}
}
