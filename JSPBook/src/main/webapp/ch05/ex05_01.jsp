<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체_request</title>
</head>
<body>
	<form action="process.jsp" method="post">
		<p><label for="name1">이름 :</label> <input type="text" name="user_name" id="name1"></p>
		<p>패스워드 : <input type="password" name="user_pwd"></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>