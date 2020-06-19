package com.project.pro.controller.info;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.pro.service.InfoService;

@Controller
@RequestMapping("/info")
public class InfoController {
	
	@Autowired
	private InfoService service;
	
	// infoCT 뷰 처리
	@RequestMapping("/infoCT.pro")
	public ModelAndView getViewCT(ModelAndView mv) {
		String view = "info/infoCT";
		mv.setViewName(view);
		return mv;
	}
	
	// infoCT 뷰 처리
	@RequestMapping("/infoAC.pro")
	public ModelAndView getViewAC(ModelAndView mv) {
		String view = "info/infoAC";
		mv.setViewName(view);
		return mv;
	}
	
	// infoCT 뷰 처리
	@RequestMapping("/infoDT.pro")
	public ModelAndView getViewDT(ModelAndView mv) {
		String view = "info/infoDT";
		mv.setViewName(view);
		return mv;
	}
}
