package com.project.pro.controller.sales;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.pro.controller.service.SalesService;
import com.project.pro.dao.SalesDAO;
import com.project.pro.vo.SalesVO;

@Controller
@RequestMapping("/sales")
public class Sales {
	@Autowired
	SalesDAO sDAO;
	@Inject
	private SalesService service;
	
	// sales list page
	@RequestMapping("/sales.pro")
	public ModelAndView getList(ModelAndView mv) throws Exception {
		String view = "sales/sales";
		ArrayList<SalesVO> list = (ArrayList<SalesVO>)service.getSaList();
		mv.addObject("LIST", list);
		mv.setViewName(view);
		return mv;
	}
//	
//	@RequestMapping("/sales.pro")
//	public ModelAndView getList(ModelAndView mv) {
//			String view = "sales/sales";
//				ArrayList<SalesVO> list = (ArrayList<SalesVO>) sDAO.getSaList();
//		return mv;
//	}
	
	// sales detail page
	@RequestMapping(value="/sales_inside.pro", method=RequestMethod.GET, params={"pno"})
	public ModelAndView saDetail(ModelAndView mv, SalesVO sVO, int pno, String memid)  throws Exception {
		String view = "sales/sales_inside";
		service.saBcnt(pno);
		SalesVO vo = service.saDetail(sVO);
		mv.addObject("DATA", vo);
		mv.addObject("PNO", pno);
		mv.addObject("ID", memid);
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
	// sales delete
	@RequestMapping(value="/sales_inside.pro", method=RequestMethod.POST, params= {"spno"})
	public ModelAndView saDelete(int spno, ModelAndView mv, SalesVO sVO) {
		String view = "sales/sales_inside.pro";
		int cnt = sDAO.saDelete(spno);
		if(cnt == 1) {
			RedirectView rv = new RedirectView("/pro/sales/sales.pro");
			mv.setView(rv);
		}
		return mv;
	}
	// sales edit page
	@RequestMapping(value="/sales_modify.pro", method=RequestMethod.POST, params= {"pno", "ptt", "pbd", "cate"})
	public ModelAndView saEdit(int pno, String ptt, String pbd, String cate, SalesVO sVO, ModelAndView mv) {
		String view = "sales/sales_modify";
		SalesVO vo = sDAO.saEdit(sVO);
		mv.addObject("DATA", vo);
		return mv;
	}
	// sales edit redirectview
	@RequestMapping(value="/sales_modifyProc.pro", method=RequestMethod.POST, params= {"pno", "ptt", "pbd", "cate"})
	public ModelAndView saEditProc(int pno, String ptt, String pbd, String cate, SalesVO sVO, ModelAndView mv) {
		String view = "sales/sales_modify";
		SalesVO vo = sDAO.saEdit(sVO);
		RedirectView rv = new RedirectView("/pro/sales/sales_inside.pro?pno="+sVO.getPno());
		mv.setView(rv);
		return mv;
	}
	// review add(ajax)
	@RequestMapping(value="/sales_review.pro", method=RequestMethod.POST,params= {"pno", "rtt", "rbd", "memid", "rst"})
	@ResponseBody
	public SalesVO reWrite(int pno, String rtt, String rbd, String memid, int rst, SalesVO sVO, HttpSession session, ModelAndView mv) {
		String view = "sales/sales_inside";
		SalesVO vo = sDAO.reWrite(sVO);
		return vo;
	}
	// review List
//	@RequestMapping(value="/sales_inside.pro", method=RequestMethod.POST, params= {"rpno"})
//	public ModelAndView reList(int rpno, SalesVO sVO, ModelAndView mv) {
//		String view = "sales/sales_inside";
//		ArrayList<SalesVO> list = (ArrayList<SalesVO>)sDAO.reList(rpno);
//		mv.addObject("LIST", list);
//		mv.setViewName(view);
//		return mv;
//	}
	// review List(ajax)
	@RequestMapping("/reviewList.pro")
	@ResponseBody
	public ArrayList<SalesVO> reList(SalesVO sVO, int pno, HttpServletRequest req) {
		ArrayList<SalesVO> list = (ArrayList<SalesVO>)sDAO.reList(pno);
		req.setAttribute("LIST", list);
		return list;
	}
}
