package com.zerojin.jin.domain;

import lombok.Data;

@Data
public class BoardVO {
	private int idx;
	private String title;
	private String content;
	private String writer;
	private String inDate;
	private int hit;
}
