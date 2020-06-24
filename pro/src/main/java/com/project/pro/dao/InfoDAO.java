package com.project.pro.dao;

import java.util.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.pro.vo.*;

public class InfoDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public InfoDAO() {}
	
	// infoAC 리스트 sql 가져오기
	public List getACList() {
		return sqlSession.selectList("iSQL.sel_ac");
	}
	
}
