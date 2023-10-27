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
<style>
@import url('https://fonts.googleapis.com/css?family=Raleway');

blockquote {
	padding: 1.5em 3em;
	margin: 2em;
	/*v Font formatting v*/
	font-family: Georgia, serif;
	font-size: 1em;
	color: #666;
	font-family: 'Raleway', sans-serif;
	width : 65%;
	border-left : 1px solid white;
}

.hline {
	border-top: 4px solid #2C2559;
	content: "";
	z-index: 1;
	text-align: center;
	height: 0;
}

.hline.top::after, .hline.bottom::after {
	/*pullquote color+formatting*/
	font-family: arial;
	font-size: 10em;
	font-weight: bold;
	text-shadow: -8px -8px 0 #fff, 8px -8px 0 #fff, -8px 8px 0 #fff, 8px 8px
		0 #fff;
	color: #D9A74A;
	position: relative;
}

.hline.top::after {
	content: "\201C"; /*Unicode for Left Double Quote*/
	/*Positioning*/
	top: -0.6em;
}

.hline.bottom::after {
	content: "\201D"; /*Unicode for Right Double Quote*/
	/*Positioning*/
	top: -0.5em;
}

/*Quote headling - optional*/
blockquote h1 {
	color: #2C2559;
	font-size: 3em;
	text-transform: uppercase;
	text-align: center;
	margin-bottom: 0;
	font-stlye: bold;
}

/*Main quote copy*/
blockquote p {
	text-align: center;
	position: relative;
	z-index: 99;
	padding: 1em;
	line-height: 1.4;
	font-size: 2rem;
}

/*Quote byline*/
blockquote cite {
	text-align: center;
	position: relative;
	padding: 1em;
	margin-bottom: 1.2rem;
	display: block;
	font-family: Georgia, serif;
	font-style: bold;
}

blockquote cite:after {
	content: '';
	border-bottom: 1px solid #666;
	position: absolute;
	padding-bottom: 0.5em;
	left: 0;
}

</style>
<body>
	<%@ include file="/header.jsp"%>
	<center>
	<blockquote>
		<div class="hline top"></div>
		<h1>공지사항</h1>
		<p>"이루어질 꿈도 이루어지지 않을 꿈만큼 불확실할 수 있다."</p>
		<cite>-브렛 버틀러</cite>
		<div class="hline bottom"></div>
	</blockquote>
	</center>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddd">
				<!--<thead>
					<tr>
						<th colspan="5"
							style="background-color: #eee; text-align: center;">서울외국인포털
							채용공고</th>
					</tr>
				</thead>
				-->
				<tbody>
				<tr>
					<th style="background-color: #eee; text-align: center;">글번호</td>
					<th style="background-color: #eee; text-align: center; width: 50%;">제목</td>
					<th style="background-color: #eee; text-align: center;">작성자</th>
					<th style="background-color: #eee; text-align: center;">언어</th>
					<th style="background-color: #eee; text-align: center;">작성일자</th>
					<th style="background-color: #eee; text-align: center;">수정일자</th>
				</tr>
				<c:forEach var="w" items="${list }">

					<tr>
						<td>${w.num }</td>
						<td style="cursor:pointer"; onmouseover="this.style.color='blue'"; onmouseout="this.style.color='black'" onClick="location.href='${pageContext.request.contextPath}/announce/detail.do?num=${w.num}'">${w.title }</td>
						<td>${w.writer }</td>
						<td>${w.lang }</td>
						<td>${w.wdate }</td>
						<td>${w.udate }</td>
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