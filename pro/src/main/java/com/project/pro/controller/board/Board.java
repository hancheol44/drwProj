package com.project.pro.controller.board;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.project.pro.vo.*;
import com.project.pro.dao.*;
import com.project.pro.service.BoardService;

@Controller
@RequestMapping("/board")
public class Board {
	@Autowired
	BoardDAO bDAO;
	@Inject
	private BoardService service;

	@RequestMapping("/board.pro")
	public ModelAndView getList(ModelAndView mv) throws Exception {
		String view = "board/board";
		ArrayList<BoardVO> list = (ArrayList<BoardVO>) service.getList();

		mv.addObject("LIST", list);
		mv.setViewName(view);
		return mv;
	}

	@RequestMapping(value = "/boardDetail.pro", method = RequestMethod.GET, params = "bdno")
	public ModelAndView boardDetail(ModelAndView mv, BoardVO bVO, int bdno) throws Exception {
		System.out.println("�Գ�???");
		String view = "board/boardDetail";
		BoardVO vo = service.bDetail(bVO);
		System.out.println("-" + bVO.getBdno());
		mv.addObject("DATA", vo);
		mv.setViewName(view);
		return mv;
	}

	@RequestMapping("/boardWrite.pro")
	public ModelAndView boardWrite(HttpSession session, ModelAndView mv) {
		String view = "board/boardWrite";
		mv.setViewName(view);
		return mv;
	}

	@RequestMapping(value = "/boardWriteProc.pro", method = RequestMethod.POST)
	public String writeProc( BoardVO bVO, HttpSession session) throws Exception {
		String memid = (String) session.getAttribute("SID");
		service.boardWrite(bVO, memid);
		return "redirect:board.pro";
	}


}