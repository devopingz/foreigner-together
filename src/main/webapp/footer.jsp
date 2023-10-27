<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  footer {
    background-color: #f8f8f8;
    padding: 20px 0;
    color: #777;
    font-size: 14px;
    
     position: fixed; /* 화면 하단에 고정 */
    left: 0;
    bottom: 0;
    width: 100%;
    height: 60px;
  }

  footer p {
    margin-bottom: 0;
  }

  footer ul li {
    display: inline-block;
    margin-left: 10px;
    list-style-type: none;
  }

   footer ul li a {
     color: #777;
     text-decoration: none;
   }
   
   footer ul li a:hover {
     color: #333;
   }
</style>
</head>
<body>
<br><br>
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <p>&copy; 2023 Your Company. All rights reserved.</p>
        <p>&copy;문의 전화번호 :  010-2345-2341 </p>
      </div>
      <div class="col-md-6 text-right">
        <ul class="list-inline">
          <li><a href="#">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div>
       
      </div>
    </div>
  </div>
</footer>
</body>
</html>