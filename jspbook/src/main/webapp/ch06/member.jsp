<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container mt-3">
	<form action="process.jsp" method="get">
		<h3 class="mb-3">회원가입</h3>
		<hr>
		<p>
			<label for="id">ID :
				<input type="text" name="id" id="id" required>
			</label>
			<input type="button" value="아이디 중복 검사">
		</p>
		<p>
			Password :
			<input type="password" name="pwd">
		</p>
		<p>
			Name :
			<input type="text" name="name">
		</p>
		<p>
			PhonNumber :
			<select name="phone1">
				<option value="010">010</option>
				<option value="062">062</option>
				<option value="02">02</option>
				<option value="063">063</option>
			</select>
			<input type="text" name="phone2" maxlength="4" size="4">
			<input type="text" name="phone3" maxlength="4" size="4">
		</p>
		<p>
			Gender :
			<input type="radio" name="gender" value="남성" checked>남성
			<input type="radio" name="gender" value="여성">여성
		</p>
		<p>
			Hobby :
			<input type="checkbox" name="hobby" value="독서" checked>독서
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="영화">영화
		</p>
		<p>
			Comment :
			<textarea rows="3" cols="30" name="comment" placeholder="가입인사를 적어주세요"></textarea>
		</p>
		<p> 
			<input type="submit" value="가입하기"> <input type="reset" value="취소하기">
		</p>
	</form>
	</div>
</body>
</html>