<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope_test02</title>
</head>
<body>
	<%= pageContext.getAttribute("a") %>	
	<%= request.getAttribute("b") %>		
	<%= session.getAttribute("c") %>		
	<%= application.getAttribute("d") %>	
</body>
</html>