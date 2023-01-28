package com.zerojin.jin.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zerojin.jin.domain.BoardVO;
import com.zerojin.jin.mapper.BoardMapper;
import com.zerojin.jin.service.BoardService;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list.do")
	public ModelAndView getList() {
		ModelAndView mv = new ModelAndView();
		
		List<BoardVO> list = boardService.boardList();
		mv.addObject("list", list);
		mv.setViewName("/board/list");
		
		return mv;
	}
	
	@GetMapping("/boardDetailForm.do")
	public ModelAndView boardForm(int idx) {
		ModelAndView mv = new ModelAndView();
		BoardVO result = boardService.boardDetail(idx);
		
		mv.addObject("board", result);
		mv.setViewName("/board/detail");
		return mv;
	}
	
	@GetMapping("/boardWriterForm.do")
	public ModelAndView boardWriteForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/write");
		return mv;
	}
	
	@PostMapping("/boardInsert.do")
	public ModelAndView boardInsert(BoardVO vo) {
		int result = boardService.boardInsert(vo);
		System.out.println("result: "+result);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/board/list.do");
		return mv;
	}
}
