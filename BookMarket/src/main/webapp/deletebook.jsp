<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>
<%
	String bookId = request.getParameter("id");

	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql = "select * from book";
	ps = conn.prepareStatement(sql);
	rs = ps.executeQuery();
	
	if(rs.next()){
		sql = "delete from book where b_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, bookId);
		ps.executeUpdate();
	}else {
		out.println("일치하는 도서가 없습니다");
	}
	
	if(rs != null) rs.close();
	if(ps != null) ps.close();
	if(conn != null) conn.close();
	
	response.sendRedirect("editBook.jsp?edit=delete");
%>