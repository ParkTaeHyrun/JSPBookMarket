<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./dbconnection.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	/* insert문(Statement 객체) */
	Statement st = null;
	try{
		String sql = "insert into member values('"+id+"','"+name+"','"+password+"')";
		st = conn.createStatement();
		st.executeUpdate(sql);
		out.println("insert success!!");
		
	}catch(SQLException e){
		out.println("insert failed<br>");
		out.println("error : " + e.getMessage());
	}finally{
		/* 객체는 역순으로 종료 */
		if(st != null) st.close();
		if(conn != null) conn.close();
	}
	
%>