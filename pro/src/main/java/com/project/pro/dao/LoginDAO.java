package com.project.pro.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.pro.vo.LoginVO;

public class LoginDAO {
	@Autowired
	
	SqlSessionTemplate sqlSession;
	
	public LoginDAO() {}
	
	public int idCheck(String id) {
		return sqlSession.selectOne("lSQL.idCount", id);
	}
	
	
	  public int login(LoginVO lVO) { 
		  return sqlSession.selectOne("lSQL.Login",lVO); 
		  }
	 

	
}
