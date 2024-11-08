<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second.jsp</title>
</head>
<body>
	<h3>Second.jsp</h3>
	<%
		String admin = request.getParameter("manage");
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String date = request.getParameter("date");
	%>
	<p>Admin : <%= admin %></p>
	<p>First Name : <%= firstname %></p>
	<p>Last Name : <%= lastname %></p>
	<p>Current Time : <%= date %></p>
</body>
</html>