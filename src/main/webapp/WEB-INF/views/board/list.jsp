<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<div class="container">
	<h2>스프링 MVC 게시판 실습</h2>
<%@include file="../templete/header.jsp"%>
		<div class="panel-body">
				<table class="table table-hover">
					<tr>
						<td>No</td>
						<td>제목</td>
						<td>내용</td>
						<td>작성자</td>
						<td>등록일</td>
						<td>조회수</td>
					</tr>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.idx}</td>
							<td><a href="/board/boardDetailForm.do?idx=${item.idx}">${item.title}</a></td>
							<td>${item.content}</td>
							<td>${item.writer}</td>
							<td>${fn:split(item.inDate," ")[0]}</td>
							<td>${item.hit}</td>
						</tr>
					</c:forEach>
				</table>
				<button id="writeBtn" class="btn btn-primary btn-sm" type="button">글쓰기</button>
		</div>
<%@include file="../templete/footer.jsp"%>
</div>
<script>
list_page = (function() {
	$(document).ready(function() {
		init_setting();
		set_event();
	});
	
	function init_setting() {
	}
	
	function set_event() {
		$("#writeBtn").on("click",function() {
			$(location).attr('href','/board/boardWriterForm.do');
		});
	}
})();
</script>