<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그</title>
</head>
<body>
	<!-- script.jsp -> script_jsp.java -> script_jsp.class -->
	<!-- C:\jsp_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\jspbook\org\apache\jsp\ch02 -->
	<h2>Script Tag</h2>
	<!-- 선언문 태그(변수, 메서드)->전역 -->
	<%!
		int count = 3;
	
		String makeItLower(String str) {
			return str.toLowerCase();
		}
		
		int sum(int n1, int n2) {
			return n1 + n2;
		}
		
		int sub(int n1, int n2) {
			return n1 - n2;
		}
	%>
	
	<!-- 스크립트릿 태그(자바의 제어문) -->
	<%
		for(int i=1; i <=3; i++) {
			out.println("count value : " + i + "<br>");
		}
	%>
	
	<!-- 표현문 -->
	<%= makeItLower("Hello WORLD") + "<br>" %>
	<%= "SUM : " + sum(10, 20) + "<br>" %>
	<%= "SUB : " + sub(10, 20) + "<br>" %>
</body>
</html>