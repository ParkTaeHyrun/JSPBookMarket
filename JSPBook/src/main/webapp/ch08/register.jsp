<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="#" name="Member" method="post">
		<p>ID : <input type="text" name="id" placeholder="id는 6~12자">
		<p>Pass : <input type="password" name="pwd" placeholder="5자리 이상">
		<p>Name : <input type="text" name="name">
		<p><input type="button" value="가입하기" onclick="checkMember()">
	</form>
	
	<script src="../resources/js/check.js"></script>
</body>
</html>