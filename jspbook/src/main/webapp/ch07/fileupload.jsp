<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="process.jsp" method="post" enctype="multipart/form-data">
		<p>이름 : <input type="text" name="name">
		<p>제목 : <input type="text" name="subject">
		<p>파일1 : <input type="file" name="file1">
		<p>파일2 : <input type="file" name="file2">
		<p><input type="submit" value="파일업로드">
	</form>
</body>
</html>