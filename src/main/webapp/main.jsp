<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="User.UserDao"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>서울시 외국인 Together</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/custom.css" />
<script type="text/javascript">
const move = () => {
   var openNewWindow = window.open("about:blank");
   openNewWindow.location.href = "https://global.seoul.go.kr/web/main.do";
}
</script>
</head>
<body>
   <%@ include file="/header.jsp"%>
   <div class="container">
      <div class="jumbotron">
         <div class="container">
            <h1>서울시 외국인 Together</h1>
            <p>서울시 외국인을 위한 웹사이트</p>
            <p>
               <a class="btn btn-primary btn-pull" role="button" onclick="move()">서울시
                  외국인 홈페이지</a>
            </p>
         </div>
      </div>
   </div>
   <div class="container">
      <!-- Carousel container -->
      <div id="my-pics" class="carousel slide" data-ride="carousel" style="width: 100%; margin: auto;">

         <!-- Indicators -->
         <ol class="carousel-indicators">
            <li data-target="#my-pics" data-slide-to="0" class="active"></li>
            <li data-target="#my-pics" data-slide-to="1"></li>
            <li data-target="#my-pics" data-slide-to="2"></li>
         </ol>

         <!-- Content -->
         <div class="carousel-inner" role="listbox">

            <!-- Slide 1 -->
            <div class="item active">
               <img src="https://mojhome.moj.go.kr/CrossEditor/binary/images/000081/1.jpg" alt="Sunset over beach">
               <div class="carousel-caption">
                  <h3>Boracay</h3>
                  <p>White Sand Beach.</p>
               </div>
            </div>

            <!-- Slide 2 -->
            <div class="item">
               <img src="https://global.seoul.go.kr/contents/commoneditor/20230602175218852ea851-53ed-4f65-9c0f-d9b1b66f5899.png" alt="Rob Roy Glacier">
               <div class="carousel-caption">
                  <h3>Rob Roy Glacier</h3>
                  <p>You can almost touch it!</p>
               </div>
            </div>

            <!-- Slide 3 -->
            <div class="item">
               <img src="https://watv.org/wp-content/uploads/2021/03/happy-home.jpg" alt="Longtail boats at Phi Phi">
               <div class="carousel-caption">
                  <h3>Phi Phi</h3>
                  <p>Longtail boats at Phi Phi.</p>
               </div>
            </div>

         </div>

         <!-- Previous/Next controls -->
         <a class="left carousel-control" href="#my-pics" role="button"
            data-slide="prev"> <span class="icon-prev" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
         </a> <a class="right carousel-control" href="#my-pics" role="button"
            data-slide="next"> <span class="icon-next" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
         </a>

      </div>
      
   </div>
   <div style="height:100px;"><%@ include file="/footer.jsp"%></div>
   
</body>
</html>