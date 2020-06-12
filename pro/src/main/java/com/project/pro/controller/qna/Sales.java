package com.project.pro.controller.qna;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

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
	
	// sales write page
	@RequestMapping("/sales_write.pro")
	public String saWrite() {
		String view ="sales/sales_write";
		return view;
	}
	
	// sales write action
	@RequestMapping(value="/sales_write.pro", method=RequestMethod.POST, params= {"ptt", "memid", "pbd", "cate"})
	public ModelAndView saWriteProc(String ptt, String memid, String pbd, String cate, SalesVO sVO, ModelAndView mv, HttpSession session) {
		String view = "sales/sales_write";
		if(session.getAttribute("SID") == null) {
			RedirectView rv = new RedirectView("/pro/login/loginList.pro");
			mv.setView(rv);
			return mv;
		}
		SalesVO vo = sDAO.saWrite(sVO);
		if(pbd != null) {
			RedirectView rv = new RedirectView("/pro/sales/sales.pro");
			mv.setView(rv);
			return mv;
		}
		return mv;
	}
	// sales detail page
	@RequestMapping(value="/sales_inside.pro", method=RequestMethod.GET, params={"pno"})
	public ModelAndView saDetail(ModelAndView mv, SalesVO sVO, int pno) {
		String view = "sales/sales_inside";
		SalesVO vo = sDAO.saDetail(sVO);
		mv.addObject("DATA", vo);
		return mv;
	}
}
