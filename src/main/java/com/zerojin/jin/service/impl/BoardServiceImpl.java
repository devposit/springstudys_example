package com.zerojin.jin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zerojin.jin.domain.BoardVO;
import com.zerojin.jin.mapper.BoardMapper;
import com.zerojin.jin.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	
	
	@Autowired
	private BoardMapper boardMapper;
	@Override
	public List<BoardVO> boardList() {
		return boardMapper.getList();
	}
	
	@Override
	public BoardVO boardDetail(int idx) {
		return boardMapper.getDetail(idx);
	}
	
	@Override
	public int boardInsert(BoardVO vo) {
		int result = boardMapper.setWrite(vo);
		return result;
	}
}
