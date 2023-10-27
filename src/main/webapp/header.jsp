<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="User.UserDao"%>
<%
   request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="User.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<script type="text/javascript">
const logout = () => {
	alert("로그아웃 되셨습니다.");
}
</script>
</head>
<body>
   <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
   %>
   <nav class="navbar navbar-default">
      <div class="navbar-header">
         <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
         </button>
         <a style="padding:0px;"href="/practice2/main.jsp" class="navbar-brand"><img src="${pageContext.request.contextPath}/img/logo.png" style="height:100%;margin-left:380px;"></a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
            <li>
               <a style="font-weight:bold" href="${pageContext.request.contextPath}/board/list.do">게시판</a>
            </li>
            <li>
               <a style="font-weight:bold" href="${pageContext.request.contextPath}/announce/list.do">공지사항</a>
            </li>
             <li>
               <a style="font-weight:bold" href="${pageContext.request.contextPath}/school/list.do">학교정보</a>
            </li>
            <li>
               <a style="font-weight:bold" href="${pageContext.request.contextPath}/recruit/list.do">채용정보</a>
            </li>
            <li>
               <a style="font-weight:bold" href="${pageContext.request.contextPath}/education/list.do">교육프로그램</a>
            </li>
            <li>
               <a style="font-weight:bold" href="${pageContext.request.contextPath}/recommend/list.do">추천시스템</a>
            </li>
         </ul>
         <%
            if (userID == null) {
         %>
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
               <a style="margin-right:380px; font-weight:bold" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  접속하기<span class="caret"></span>
               </a>
               <ul class="dropdown-menu" style="margin-right:380px;">
                  <li>
                     <a style="font-weight:bold" href="${pageContext.request.contextPath}/user/login.do">로그인</a>
                  </li>
                  <li>
                     <a style="font-weight:bold" href="${pageContext.request.contextPath}/user/join.do">회원가입</a>
                  </li>
               </ul>
            </li>
         </ul>
         <%
            } else {
         %>
         <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
               <a style="margin-right:380px; font-weight:bold" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=userID%>
                  님<span class="caret"></span>
               </a>
               <ul class="dropdown-menu" style="margin-right:380px;">
                   <li>
                     <a style="font-weight:bold" href="${pageContext.request.contextPath}/user/myinfo.do">내 정보</a>
                  </li>
                  <li>
                     <a style="font-weight:bold" href="${pageContext.request.contextPath}/recruit/mylist.do?userID=${sessionScope.userID}">내 지원목록</a>
                  </li>
                  <li>
                     <a style="font-weight:bold" href="${pageContext.request.contextPath}/user/logout.do" onclick="logout()">로그아웃</a>
                  </li>
               </ul>
            </li>
         </ul>
         <%
            }
         %>
      </div>
   </nav>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   <script src="js/jquery-3.4.1.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
</body>
</html>