<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫번째 페이지</title>
</head>
<body>
	<h3>first.jsp</h3>
	<jsp:forward page="forward_second.jsp">
		<jsp:param value="관리자" name="manage"/>
		<jsp:param value="Park" name="fname"/>
		<jsp:param value="TaeHyeon" name="lname"/>
		<jsp:param value="<%= new java.util.Date() %>" name="date"/>
	</jsp:forward>
	이 내용 도 출력?
</body>
</html>