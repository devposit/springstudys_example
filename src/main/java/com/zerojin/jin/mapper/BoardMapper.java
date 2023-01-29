package com.zerojin.jin.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Mapper;

import com.zerojin.jin.domain.BoardVO;

@Mapper
public interface BoardMapper {
	public List<BoardVO> getList();
	public BoardVO getDetail(int idx);
	public int setWrite(BoardVO vo);
	public int setDelete(int idx);
	public int setUpdate(BoardVO vo);
	public void setCnt(int idx);
}
