<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" />
<script>
const writecheck = () => {
	
	if(f.bbsTitle.value=='') {
		alert("제목을 입력해 주세요.");
		f.userID.focus();
		return;
	}
	if(f.bbsContent.value == '') {
		alert("내용을 입력해 해주세요.");
		return;
	}

	alert("글작성이 완료되었습니다.");
	f.submit();
}
</script>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<div class="container">
		<div class="row">
			<form action="${pageContext.request.contextPath}/board/write.do?userID=${sessionScope.userID}" method="post" name="f" enctype="multipart/form-data">
				<table class="table table-striped" style="text-align: center; border: 1px solid #ddd">
					<thead>
						<tr>
							<th style="background-color: #eee; text-align: center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50">
							</td>
						</tr>
						<tr>
							<td>
								<textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<input type="file" name="path1">
							</td>
						</tr>
						
						<tr>
							<td>
								<input type="file" name="path2">
							</td>
						</tr>
						
					</tbody>
				</table>
				<input type="button" class="btn btn-primary pull-right" value="글쓰기" onclick="writecheck()">
			</form>
		</div>
	</div>
	<%@ include file="/footer.jsp" %>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
