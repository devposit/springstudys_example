package com.zerojin.jin.service;

import java.util.*;

import com.zerojin.jin.domain.BoardVO;

public interface BoardService {
	public List<BoardVO> boardList();
	public BoardVO boardDetail(int idx);
	public int boardInsert(BoardVO vo);
	public int boardUpdate(BoardVO vo);
	public int boardDelete(int idx);
	public void boardCount(int idx);
}
