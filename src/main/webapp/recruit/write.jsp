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
<script>
const writecheck = () => {
	
	if(f.content.value=='') {
		alert("자기소개서를 입력해 주세요.");
		f.userID.focus();
		return;
	}
	if(f.degree.value == '') {
		alert("학력사항을 입력해 해주세요.");
		return;
	}
	if(f.exp.value == '') {
		alert("경험사항을 입력해 해주세요.");
		return;
	}
	if(f.path1.value == '') {
		alert("사진은 필수로 업로드해야 됩니다.");
		return;
	}
	alert("지원이 완료되었습니다.");
	f.submit();
}
</script>
</head>
<style>
th{
width : 100px;
text-align : center;
}
</style>
<body>
	<%@ include file="/header.jsp" %>
	<div class="container">
		<div class="row">
			<form action="${pageContext.request.contextPath}/recruit/write.do?userID=${sessionScope.userID}" method="post" name="f" enctype="multipart/form-data">
				<table class="table table-striped" style="text-align: center; border: 1px solid #ddd">
					<thead>
						<tr>
							<th style="background-color: #eee; text-align: center; "colspan="2">지원서</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<th>공고 제목</th>
							<td>
								<input type="text" class="form-control" value="${title}" name="title" maxlength="50" readonly>
							</td>				
						</tr>
						<tr>
						<th>성명</th>
							<td>
								<input type="text" class="form-control" value="${sessionScope.UserName}" name="name" maxlength="50" readonly>
							</td>				
						</tr>
						<tr>
						<th>성별</th>
							<td>
								<input type="text" class="form-control" value="${sessionScope.UserGender}" name="gender" maxlength="50" readonly>
							</td>				
						</tr>
						<tr>
						<th>자기소개서</th>
							<td>
								<textarea class="form-control" placeholder="자기소개서" name="content" maxlength="2048" style="height: 350px"></textarea>
							</td>
						</tr>
						<tr>
						<th>휴대폰번호</th>
							<td>
								<input type="text" class="form-control" value="${sessionScope.userPhoneNum}" name="phonenum" maxlength="50" readonly>
							</td>				
						</tr>
						<tr>
						<th>학력사항</th>
							<td>
								<input type="text" class="form-control" placeholder="졸업하신 최종학력을 입력해주세요." name="degree" maxlength="50">
							</td>				
						</tr>
						<tr>
						<th>경험사항</th>
							<td>
								<input type="text" class="form-control" placeholder="인턴, 교육, 등 경험사항을 입력해주세요." name="exp" maxlength="50">
							</td>				
						</tr>
						<tr>
						<th>증명사진</th>
							<td>
								<input type="file" name="path1">
							</td>
						</tr>					
					</tbody>
				</table>
				<input type="button" class="btn btn-primary pull-right" value="지원하기" onclick="writecheck()">
			</form>
		</div>
	</div>
	<%@ include file="/footer.jsp" %>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
