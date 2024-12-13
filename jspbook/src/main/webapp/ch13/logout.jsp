<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션 삭제
	//방법1
	/* session.removeAttribute("userID");
	session.removeAttribute("userPW"); */
	
	//방법2
	session.invalidate();
	
	response.sendRedirect("login.jsp");
%>