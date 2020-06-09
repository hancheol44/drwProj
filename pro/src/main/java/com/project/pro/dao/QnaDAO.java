package com.project.pro.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class QnaDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public QnaDAO() {}
	
	// qna 게시판 리스트 가져오기 전담 처리 함수
	public List getList() {
		return sqlSession.selectList("qSQL.qnaList");
	}
}
