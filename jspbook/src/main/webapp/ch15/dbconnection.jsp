<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = null;
	try{
		String url = "jdbc:mysql://localhost:3306/jspbookdb";
		String user = "root";
		String passwd = "12345";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, passwd);
		
		out.println("DB connection Success@!");
	}catch(SQLException e){
		out.println("DB connection Failed!!<br>");
		e.getMessage();
	}finally{
		if(conn != null)
			conn.close();
	}
%>