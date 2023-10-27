<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/custom.css" />
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddd">
				<tbody>
					<tr>
						<th style="text-align: center; width: 5%;">글번호</th>
						<td>${num }</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 3.5%;">제목</th>
						<td>${title }</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 5%;">작성자</th>
						<td>${writer }</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 3.5%;">언어</th>
						<td>${lang }</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 7%;">작성일자</th>
						<td>${wdate }</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 7%;">수정일자</th>
						<td>${udate }</td>
					</tr>
					<tr>
						<th style="text-align: center; width: 3.5%;">내용</th>
						<td>${content }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>