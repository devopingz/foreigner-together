<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>ChatBot</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/custom.css" />
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
   width: 65%;
   border-left: 1px solid white;
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
/* page-loading */
#loading {
   width: 100%;
   height: 100%;
   top: 0;
   left: 0;
   position: fixed;
   display: block;
   opacity: 0.6;
   background: #e4e4e4;
   z-index: 99;
   text-align: center;
}

#loading>img {
   position: absolute;
   top: 40%;
   left: 45%;
   z-index: 100;
}

#loading>p {
   position: absolute;
   top: 57%;
   left: 43%;
   z-index: 101;
}
pre{
 
    width: 100%; /* 너비를 고정시키고 필요에 따라 조절하세요 */
    height: 450px;
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: left; /* 텍스트를 왼쪽 정렬로 변경 */
    font-family: Arial, sans-serif;
    color: #333;
    overflow-x: hidden; /* 가로 스크롤바를 숨김 */
    overflow-y: auto; /* 세로 스크롤바를 필요할 때만 표시함 */
    word-wrap: break-word; /* 긴 단어를 줄바꿈함 */
    white-space: pre-line; /* 여러 공백과 줄바꿈을 유지함 */
    font-weight : bold;
    font-size : 1.7rem;
}

#result {
    height: 450px;
    overflow-y: scroll;
    /*margin-bottom: 10px;
    padding: 10px;*/
    border: 1px solid #ccc;
    border-radius: 5px;
}
.chat-container {
   margin-top : 20px;
    width: 1150px;
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
}
</style>
<script>
   $(document).ready(function() {
      $('#loading').hide();
   });

   function chatGPT() {
      const api_key = "API_KEY" //
      //const keywords = document.getElementById('keywords').value
      $('#loading').show();

      const messages = [ {
         role : 'system',
         content :'외국인을 위한 서울 관광지 설명까지 같이해서 리스트3개 한글로 출력'
      }, {
         role : 'user',
         content : '외국인을 위한 서울 관광지 설명까지 같이해서 리스트3개 한글로 출력'
      }, ]

      const data = {
         model : 'gpt-3.5-turbo',
         temperature : 0.5,
         n : 1,
         messages : messages,
      }

      $.ajax({
         url : "https://api.openai.com/v1/chat/completions",
         method : 'POST',
         headers : {
            Authorization : "Bearer " + api_key,
            'Content-Type' : 'application/json',
         },
         data : JSON.stringify(data),
      }).then(function(response) {
         $('#loading').hide();
         console.log(response)
         let result = document.getElementById('result')
         let pre = document.createElement('pre')
         pre.innerHTML = "\n" +response.choices[0].message.content
         result.appendChild(pre)
      });
   }
   
   function chatGPT2() {
      const api_key = "API_KEY" //
      //const keywords = document.getElementById('keywords').value
      $('#loading').show();

      const messages = [ {
         role : 'system',
         content : '외국인을 위한 서울 맛집 설명까지 같이해서 리스트3개 한글로 출력'
      }, {
         role : 'user',
         content : '외국인을 위한 서울 맛집 설명까지 같이해서 리스트3개 한글로 출력'
      }, ]

      const data = {
         model : 'gpt-3.5-turbo',
         temperature : 0.5,
         n : 1,
         messages : messages,
      }

      $.ajax({
         url : "https://api.openai.com/v1/chat/completions",
         method : 'POST',
         headers : {
            Authorization : "Bearer " + api_key,
            'Content-Type' : 'application/json',
         },
         data : JSON.stringify(data),
      }).then(function(response) {
         $('#loading').hide();
         console.log(response)
         let result = document.getElementById('result')
         let pre = document.createElement('pre')
         pre.innerHTML = "\n"+  response.choices[0].message.content
         result.appendChild(pre)
      });
   }
   
   function chatGPT3() {
      const api_key = "API_KEY" //
      //const keywords = document.getElementById('keywords').value
      $('#loading').show();

      const messages = [ {
         role : 'system',
         content : '외국인을 위한 서울 복지 설명까지 같이해서 리스트3개 한글로 출력'
      }, {
         role : 'user',
         content : '외국인을 위한 서울 복지 설명까지 같이해서 리스트3개 한글로 출력'
      }, ]

      const data = {
         model : 'gpt-3.5-turbo',
         temperature : 0.5,
         n : 1,
         messages : messages,
      }

      $.ajax({
         url : "https://api.openai.com/v1/chat/completions",
         method : 'POST',
         headers : {
            Authorization : "Bearer " + api_key,
            'Content-Type' : 'application/json',
         },
         data : JSON.stringify(data),
      }).then(function(response) {
         $('#loading').hide();
         console.log(response)
         let result = document.getElementById('result')
         let pre = document.createElement('pre')
         pre.innerHTML = "\n" + response.choices[0].message.content
         result.appendChild(pre)
      });
   }
const dontmove = () => {
   alert("회원만 이용가능합니다. 로그인을 해주세요.");
}
</script>
</head>
<body>

   <%@ include file="/header.jsp"%>
   <%
    // Java 코드로부터 sessionScope.userID 값을 받아옵니다.
    String username = (String) session.getAttribute("userID");
   %>
   <center>
      <blockquote>
         <div class="hline top"></div>
         <h1>추천시스템</h1>
         <p>"It's a system that recommends anything."</p>
         <cite>-인공지능</cite>
         <div class="hline bottom"></div>
      </blockquote>
   </center>
   <center>
      <blockquote>
      <h1 style="font-size:30px;">버튼을 눌러주세요</h1><br/>
      <!--  <input type="text" id="keywords" name="keywords" required />-->
      <c:if test="${sessionScope.userID != null}">
      <button class="btn btn-primary btn-pull" onclick="chatGPT()">관광지</button>
      <button style="margin-left:20px;"class="btn btn-primary btn-pull" onclick="chatGPT2()">맛집</button>
      <button style="margin-left:20px;"class="btn btn-primary btn-pull" onclick="chatGPT3()">복지</button>
      </c:if>
      <c:if test="${sessionScope.userID == null}">
      <button class="btn btn-primary btn-pull" onclick="dontmove()">관광지</button>
      <button style="margin-left:20px;"class="btn btn-primary btn-pull" onclick="dontmove()">맛집</button>
      <button style="margin-left:20px;"class="btn btn-primary btn-pull" onclick="dontmove()">복지</button>
      </c:if>
      <div class="chat-container">
      <div id="result"></div>
      </div>
      <div id="loading">
         <img src="https://studentrights.sen.go.kr/images/common/loading.gif">
      </div>
      </blockquote>
   </center>
   <%@ include file="/footer.jsp"%>
   <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>