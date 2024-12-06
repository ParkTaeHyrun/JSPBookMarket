<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container py-4">
		<!-- 메뉴영역 -->
		<!-- 디렉티브 태그 -->
		<%@ include file="menu.jsp" %>
		
		<!-- 중간 타이틀 영역 -->
		 <div class="p-5 mb-4 text-bg-primary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">로그인</h1>
				<p class="col-md-8 fs-4">LogIn</p>
			</div>
		 </div>
		 
		 <!-- 본문 영역 -->
		 <div class="row align-items-md-stretch text-center">
		 	<div class="row justify-content-center align-items-center">
				<div class="h-100 p-5 col-md-6">
					<h3>Please Sign In</h3>
					
					<%
						String error = request.getParameter("error");
						if(error != null){
							out.println("<div class='alert alert-danger'>");
							out.println("아이디와 비밀번호를 확인해주세요.");
							out.println("</div>");
						}
					%>
					
					<form class="form-signin" action="j_security_check" method="post">
						<div class="form-floating mb-3 row">
							<input type="text" autofocus="autofocus" required="required" name="j_username" class="form-control">
							<label>ID</label>
						</div>
						
						<div class="form-floating mb-3 row">
							<input type="password" name="j_password" class="form-control">
							<label>Password</label>
						</div>
						<button type="submit" class="btn btn-success">로그인</button>
					</form>
				</div>
			</div>
		 </div>
		 <!-- 바닥글 영역 -->
		 <!-- 디렉티브 태그 -->
		 <%@ include file="footer.jsp" %>
	</div>
</body>
</html>