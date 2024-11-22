<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<div class="container py-4">
		<!-- 메뉴영역 -->
		<!-- 디렉티브 태그 -->
		<%@ include file="menu.jsp" %>
		
		<!-- 중간 타이틀 영역 -->
		<div class="p-5 mb-4 text-bg-primary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold"> 도서 상세정보 </h1>
				<p class="col-md-8 fs-4">Book Detail Information</p>
			</div>
		</div>
		 
		<!-- 본문 영역 -->
		 
		<%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"></jsp:useBean> --%>
		<% 
		 	String id = request.getParameter("id");
		 	
		 	/* BookRepository dao = BookRepository.getInstance();
		 	Book b = dao.getById(id); */
		 	
		 	PreparedStatement ps = null;
			ResultSet rs = null;
			 	
			String sql = "select * from book where b_id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
		%>
		<div class="row align-items-md-stretch">
			<div class="col-md-5">
				<img src="<%= request.getContextPath() %>/resources/images/<%= rs.getString("b_fileName") %>" style="width: 70%">
			</div>
			<div class="col-md-7">
				<h3><b> <%= rs.getString("b_name") %> </b></h3>
				<p> <%= rs.getString("b_description") %>
				<p>도서코드 :<span class="badge text-bg-danger"><%= rs.getString("b_id") %></span>
				<p>저자 : <%= rs.getString("b_author") %> 
				<p>출판사 : <%= rs.getString("b_publisher") %>
				<p>분류 : <%= rs.getString("b_category") %>
				<p>재고수 : <%= rs.getLong("b_unitsInStock") %> 권
				<p>가격 : <%= NumberFormat.getInstance().format(rs.getInt("b_unitPrice")) %>원 
				<p> <a href="#" class="btn btn-info">도서주문 &raquo;</a>
				<a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>	
			</div>
		</div>
		<%
			}
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		%>
		<!-- 바닥글 영역 -->
		<!-- 디렉티브 태그 -->
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>