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
let flag = false;
let req = new XMLHttpRequest();
req.onload = () => {
	let res = req.responseText;
	let obj = JSON.parse(res); 
	let txt = "중복된 아이디입니다.";
	if (obj.flag) {
		txt = "사용 가능한 아이디입니다.";
		f.flag.value = true;
	}
	document.getElementById("result").innerHTML = txt;
}

const init = () => {
	f.flag.value = false;
}

const idcheck = () => {
	let id = f.userID.value; 
	req.open("get", "${pageContext.request.contextPath}/user/idcheck.do?userID=" + id);
	req.send();
}

const joincheck = () => {
	
	if(f.userID.value=='') {
		alert("아이디를 입력해 주세요.");
		f.userID.focus();
		return;
	}
	if(f.flag.value == 'false') {
		alert("아이디 중복확인을 해주세요.");
		return;
	}
	if(f.userPassword.value=='') {
		alert("패스워드를 입력해 주세요.");
		f.pwd.focus();
		return;
	}
	if(f.userName.value=='') {
		alert("이름를 입력해 주세요.");
		f.name.focus();
		return;
	}
	if(f.phoneNum.value=='') {
		alert("핸드폰번호를 입력해 주세요.");
		f.email.focus("");
		return;
	}
	if(f.userEmail.value=='') {
		alert("이메일을 입력해 주세요.");
		f.email.focus("");
		return;
	}
	alert("회원가입이 완료되었습니다.");
	f.submit();
}
</script>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="${pageContext.request.contextPath}/user/join.do" method="post" name="f">
				<input type="hidden" name="flag" value="false">
					<h3 style="text-align: center;">회원가입</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" onfocus="init()" />
						<input type="button" value="중복체크" onclick="idcheck()">
						<span id="result"></span><br/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="전화번호" name="phoneNum" maxlength="20" />
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked="checked" />
								남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="여자" />
								여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50" />
					</div>
					<input type="button" class="btn btn-primary form-control" value="회원가입" onclick="joincheck()" />
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
