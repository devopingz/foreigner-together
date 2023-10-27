<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/custom.css" />
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="container">
		<div class="row">
			<form action="">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #ddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eee; text-align: center;">게시판 글
								보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%; font-weight: bold;">글 제목</td>
							<td>${bbs.bbsID }</td>
						</tr>
						<tr>
							<td style="font-weight:bold">작성자</td>
							<td>${bbs.userID }</td>
						</tr>
						<tr>
							<td style="font-weight:bold">작성일자</td>
							<td>${bbs.bbsDate }</td>
						</tr>
						<tr>
							<td style="font-weight:bold">내용</td>
							<td style="min-height: 200px; text-align: center;">${bbs.bbsContent }</td>
						</tr>
						<tr>
							<td style="font-weight:bold">사진1</td>
							<td><img src="/together/${bbs.path1 }" alt="상품사진 없음">
							</td>
						</tr>
						<tr>
							<td style="font-weight:bold">사진2</td>
							<td><img src="/together/${bbs.path2 }" alt="상품사진 없음">
							</td>
						</tr>
					</tbody>
				</table>
				
			</form>
			<a href="${pageContext.request.contextPath}/board/list.do" class="btn btn-primary">목록</a>
			<c:if test="${sessionScope.userID == bbs.userID}">
			<a href="${pageContext.request.contextPath}/board/edit.do?bbsID=${bbs.bbsID}" class="btn btn-primary">수정</a>
			<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="${pageContext.request.contextPath}/board/delete.do?bbsID=${bbs.bbsID}" class="btn btn-primary">삭제</a>
			</c:if>
			<c:if test="${sessionScope.userID != bbs.userID}">
			<a onclick="return confirm('본인 글만 수정 가능합니다.')" class="btn btn-primary">수정</a>
			<a onclick="return confirm('본인 글만 삭제 가능합니다.')" class="btn btn-primary">삭제</a>
			</c:if>

		</div>
	</div>
	<br><br><br><br><br>
	<%@ include file="/footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
