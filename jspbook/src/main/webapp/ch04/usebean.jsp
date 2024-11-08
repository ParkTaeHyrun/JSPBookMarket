<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="ch04.dto.Person" scope="request"></jsp:useBean>
	<p>ID : <%= member.getId() %>
	<p>Name : <%= member.getName() %>
	<hr>
	<%
		member.setId(20241004);
		member.setName("Park Taehyeon");
	%>
	<p>ID : <%= member.getId() %>
	<p>Name : <%= member.getName() %>
</body>
</html>