<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<% pageContext.setAttribute("newLineChar", "\n"); %> 
<div class="container">
	<h2>스프링 MVC 게시판 실습</h2>
<%@include file="../templete/header.jsp"%>
		<div class="panel-body">
				<table class="table">
					<input type="hidden" name="inDate" value="${board.inDate}" />
					<tr>
						<td>번호</td>
						<td><input type="text" name="idx" class="form-control" readonly="readonly" value="${board.idx}"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="title" class="form-control" value="${board.title}" readonly="readonly"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td>${fn:replace(board.content,newLineChar,"<br />")}</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="writer" class="form-control" readonly="readonly" value="${board.writer}"></td>
					</tr>
					<tr>
						<td>작성일</td>
						<td><input type="text" name="inDate" class="form-control" readonly="readonly" value="${fn:split(board.inDate," ")[0]}"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center">
							<a href="/board/boardUpdateForm.do/${board.idx}" class="btn btn-primary btn-sm">수정화면</a>
							<a href="/board/boardDelete.do/${board.idx}" class="btn btn-warning btn-sm">삭제</a>
							<a href="/board/list.do" class="btn btn-info btn-sm">목록</a>
						</td>
					</tr>
				</table>
		</div>
<%@include file="../templete/footer.jsp"%>
</div>