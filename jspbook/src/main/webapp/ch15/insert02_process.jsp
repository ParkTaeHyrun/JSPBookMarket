<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	/* insert문(PrepatredStatement 객체) */
	PreparedStatement ps = null;
	try{
		String sql = "insert into member values(?, ?, ?)";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, password);
		ps.executeUpdate();
		out.println("insert success!!");
		
	}catch(SQLException e){
		out.println("insert failed<br>");
		out.println("error : " + e.getMessage());
	}finally{
		/* 객체는 역순으로 종료 */
		if(ps != null) ps.close();
		if(conn != null) conn.close();
	}
	
%>