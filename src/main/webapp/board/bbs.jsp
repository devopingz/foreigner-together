<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<base>

<style>
a, a:hover {
	color: #000;
	text-decoration: none;
}

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

</head>
<body>
	<%@ include file="/header.jsp"%>
	<center>
	<blockquote>
		<div class="hline top"></div>
		<h1>소통게시판</h1>
		<p>"소통하지 못한다면, 어떠한 행복도 느끼지 못한다."</p>
		<cite>-미셀 드 몬테인</cite>
		<div class="hline bottom"></div>
	</blockquote>
	</center>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #ddd">
				<thead>
					<tr>
						<th style="background-color: #eee; text-align: center;">번호</th>
						<th style="background-color: #eee; text-align: center;">제목</th>
						<th style="background-color: #eee; text-align: center;">작성자</th>
						<th style="background-color: #eee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="bbs" items="${list }">
						<tr>
							<td>${bbs.bbsID }</td>
							<td><a style="cursor: pointer"
								; onmouseover="this.style.color='blue'"
								; 
							onmouseout="this.style.color='black'"
								href="${pageContext.request.contextPath}/board/view.do?bbsID=${bbs.bbsID}">${bbs.bbsTitle }</a></td>
							<td>${bbs.userID }</td>
							<td>${bbs.bbsDate }</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

			<a href="" class="btn btn-success btn-arrow-left">이전</a> <a href=""
				class="btn btn-success btn-arrow-right">다음</a>
			<c:if test="${sessionScope.userID != null}">
				<a href="${pageContext.request.contextPath}/board/write.do"
					class="btn btn-primary pull-right">글쓰기</a>
			</c:if>
			<c:if test="${sessionScope.userID == null}">
				<a onclick="alert('로그인 해주세요')" class="btn btn-primary pull-right">글쓰기</a>
			</c:if>


		</div>
	</div>

	<%@ include file="/footer.jsp"%>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
