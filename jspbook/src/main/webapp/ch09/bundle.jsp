<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 태그 사용(다국어 적용)</title>
</head>
<body>
	<p>--------------------Basic Locale-----------------------
	<fmt:setLocale value="ko"/>
	<fmt:setBundle basename="com.bundle.message" var="mb" />
	<p>이름 : <fmt:message key="username" bundle="${mb}" />
	<p>제목 : <fmt:message key="title" bundle="${mb}" />
	<p>패스워드 : <fmt:message key="password" bundle="${mb}" />
	<p>--------------------English Locale---------------------
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="com.bundle.message" var="mb" />
	<fmt:message key="username" bundle="${mb}" var="u_name" />
	<fmt:message key="title" bundle="${mb}" var="u_title" />
	<fmt:message key="password" bundle="${mb}" var="u_password" />
	<p>Name : ${u_name}
	<p>Title : ${u_title}
	<p>Password : ${u_password}
</body>
</html>