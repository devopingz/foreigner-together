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
<script type="text/javascript">
const move = (val) => {
	//alert(val);
	var openNewWindow = window.open("about:blank");
	openNewWindow.location.href = val;
}
</script>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddd">
				<tbody>
				<tr>
					<th style="background-color: #eee; text-align: center; width: 50%;">지원하신 공고내역</td>
				</tr>
				<c:forEach var="w" items="${list }">
					<tr>
						<td>${w.title }  <a href="${pageContext.request.contextPath}/recruit/view.do?num=${w.num}"style="font-size : 1.2rem; height:20px; padding-top:1px; margin-right:10px" class="btn btn-primary pull-right">상세보기</a>  </td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<%@ include file="/footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>