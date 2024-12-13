<%@page import="dao.BookRepository"%>
<%@page import="dto.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	if(id == null){
		response.sendRedirect("./exceptionNoBookId");
		return;
	}
	//DB 연결 (X)
	
	BookRepository dao = BookRepository.getInstance();
	Book goods = dao.getById(id);
	
	if(goods == null){
		out.println("선택한 도서 정보가 없습니다.");
	}
	
	
%>