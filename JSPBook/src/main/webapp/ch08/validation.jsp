<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규표현식을 이용한 회원가입</title>
<script type="text/javascript" src="../resources/js/regexp.js"></script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="#" name="Register" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input type="text" name="name">
		<p>연락처 : <select name="phone1">
				<option value="010">010</option>
				<option value="062">062</option>
				<option value="02">02</option>
				<option value="017">017</option>
				<option value="019">019</option>
				</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
				<input type="text" maxlength="5" size="5" name="phone3">
		<p>이메일 : <input type="text" name="email">		
		<p><input type="button" value="가입하기" onclick="checkRegister()"> 
	</form>
	<script src="../resources/js/register.js"></script>	
</body>
</html>