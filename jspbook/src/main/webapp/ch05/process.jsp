<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("user_name");
		String password = request.getParameter("user_pwd");
		
		out.println(name + "<br>");
		out.println(password); 
	%>
	
	<p>Name : <%= name %>
	<p>Password : <%= password %>
	
	<%
		if(name.equals("박태현") && password.equals("1234")) {
			response.sendRedirect("success.jsp");
		}else {
			response.sendRedirect("fail.jsp");
		}
	%>
	
	<hr>
	<p>ID : <%= request.getRemoteAddr() %>
	<p>Protocol : <%= request.getProtocol() %>
	<p>Method : <%= request.getMethod() %>
	<p>URI : <%= request.getRequestURI() %>
	<p>URL : <%= request.getRequestURL() %>
	<p>Server Name : <%= request.getServerName() %>
	<p>Server Port : <%= request.getServerPort() %>
	<p>Context Path : <%= request.getContextPath() %>
	
</body>
</html>