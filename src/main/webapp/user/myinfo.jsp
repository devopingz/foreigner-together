<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href ="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
<script type="text/javascript">
const change = () => {

}
</script>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="${pageContext.request.contextPath}/user/myinfo.do" method="post" name="f">
					<h3 style="text-align: center;">내 정보</h3>
					<div class="form-group">
						<input type="text" value="${userID}"class="form-control" placeholder="아이디" name="userID" maxlength="20" readonly/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
					</div>
					<div class="form-group">
						<input type="text" value="${UserName}"class="form-control" placeholder="이름" name="userName" maxlength="20" readonly/>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="전화번호" name="phoneNum" maxlength="20" value="${userPhoneNum}" />
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="${UserGender}" checked="checked" />
								${UserGender}
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50" value="${UserEmail}" />
					</div>
					<input type="submit" class="btn btn-primary form-control" value="내 정보수정"/>
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
