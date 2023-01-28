<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<td><input type="text" name="title" class="form-control" value="${board.title}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="content" rows="7" col="7">${board.content }</textarea></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="writer" class="form-control" readonly="readonly" value="${board.writer}"></td>
					</tr>
				</table>
		</div>
<%@include file="../templete/footer.jsp"%>
</div>