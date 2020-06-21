package com.project.pro.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.pro.vo.BoardVO;

public class BoardDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public BoardDAO() {
	}

	public List getList() {
		return sqlSession.selectList("bSQL.boardList");
	}
	
	public BoardVO bDetail(BoardVO bVO) {
		return sqlSession.selectOne("bSQL.boardDetail", bVO);			
	}
	
	public static BoardVO write(BoardVO bVO) {
		sqlSession.insert("bSQL.boardWrite", bVO);
		return bVO;
	}
}
