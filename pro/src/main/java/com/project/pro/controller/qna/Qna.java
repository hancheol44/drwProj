package com.project.pro.controller.qna;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.pro.dao.QnaDAO;
import com.project.pro.vo.QnaVO;

@Controller
@RequestMapping("/qna")
public class Qna {

	@Autowired
	QnaDAO qDAO;
	
	@RequestMapping("/qnaList.pro")
	public ModelAndView qnalist(ModelAndView mv) {
		String view = "/qna/qnaList";
		ArrayList<QnaVO> list = (ArrayList<QnaVO>)qDAO.getList();
		mv.addObject("LIST", list);
		
		mv.setViewName(view);
		return mv;
	}
	
}
