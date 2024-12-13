<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(session.getAttribute("userID") == null){
	%>
	
	<form action="session_process.jsp" method="post" onsubmit="return vaildateForm(this)">
		<p>ID : <input type="text" name="id">
		<p>Password : <input type="password" name="passwd">
		<p><input type="submit" value="submit">
	</form>
	<%
		}else {
	%>
	<%= session.getAttribute("userID") %>회원님. 로그인 하셨습니다.<br>
	<a href="logout.jsp">로그아웃</a>
	<%
		}
	%>
	<script type="text/javascript">
		function vaildateForm(form) {
			if(!form.id.value){
				alert("id를 입력하세요");
				return false;
			}
			if(form.passwd.value == ""){
				alert("비밀번호를 입력하세요");
				return false;
			}
		}
	</script>
</body>
</html>