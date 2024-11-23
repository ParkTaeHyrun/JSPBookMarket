<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="insert02_process.jsp" method="post">
		<p>ID : <input type="text" name="id">
		<p>Password : <input type="password" name="passwd">
		<p>Name : <input type="text" name="name">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>