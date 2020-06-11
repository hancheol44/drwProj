package com.project.pro.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.pro.vo.*;
import com.project.pro.dao.*;

@Controller
@RequestMapping("/board")
public class Board {
	@Autowired
	BoardDAO bDAO;

	@RequestMapping("/board.pro")
	public ModelAndView board(ModelAndView mv) {
		String view = "board/board";
		ArrayList<BoardVO> list = (ArrayList<BoardVO>) bDAO.getList();
		
		mv.addObject("LIST", list);
		mv.setViewName(view);
		return mv;
	}

	@RequestMapping("/boardDetail.pro")
	public ModelAndView boardDetail(HttpSession session, ModelAndView mv) {
		String view = "board/boardDetail";
		mv.setViewName(view);
		return mv;
	}
	@RequestMapping("/boardWrite.pro")
	public ModelAndView boardWrite(HttpSession session, ModelAndView mv) {
		String view = "board/boardWrite";
		mv.setViewName(view);
		return mv;
	}
}
