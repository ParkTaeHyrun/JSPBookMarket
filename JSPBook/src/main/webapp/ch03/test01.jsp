<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope_test01</title>
</head>
<body>
	<%
		pageContext.setAttribute("a", "1");	//page
		request.setAttribute("b", "2");		//request
		session.setAttribute("c", "3");		//session
		application.setAttribute("d", "4");	//application
	%>
	<!-- <a href="test02.jsp">test02.jsp로 이동</a> -->
	<jsp:forward page="test02.jsp" />

</body>
</html>