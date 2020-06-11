package com.project.pro.controller.qna;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.pro.dao.SalesDAO;
import com.project.pro.vo.SalesVO;

@Controller
@RequestMapping("/sales")
public class Sales {
	@Autowired
	SalesDAO sDAO;
	
	// sales list page
	@RequestMapping("/sales.pro")
	public ModelAndView getList(ModelAndView mv) {
		String view = "sales/sales";
		ArrayList<SalesVO> list = (ArrayList<SalesVO>)sDAO.getSaList();
		mv.addObject("LIST", list);
		mv.setViewName(view);
		return mv;
	}
	
	// sales detail page
	@RequestMapping(value="/sales_inside.pro", method=RequestMethod.POST, params={"pno"})
	public ModelAndView saDetail(ModelAndView mv, SalesVO sVO, int pno) {
		String view = "sales/sales_inside";
//		ArrayList<SalesVO> list = (ArrayList<SalesVO>)sDAO.saDetail(pno);
		return mv;
	}
}
