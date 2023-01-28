<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<h2>스프링 MVC 게시판 실습</h2>
<%@include file="../templete/header.jsp"%>
		<div class="panel-body">
			<form action="/board/boardInsert.do" method="post">
				<table class="table">
					<tr>
						<td>제목</td>
						<td><input type="text" id="title" name="title" class="form-control"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea id="content" name="content" rows="7" col="7"></textarea></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" id="writer" name="writer" class="form-control"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align:center">
							<button type="submit" class="btn btn-success btn-sm">등록</button>
							<button type="reset" class="btn btn-warning btn-sm">취소</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
<%@include file="../templete/footer.jsp"%>
</div>