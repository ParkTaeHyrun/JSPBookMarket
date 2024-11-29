<%@page import="java.text.NumberFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 편집</title>
</head>
<%
	String edit = request.getParameter("edit");
%>
<body>
	<div class="container py-4">
		<!-- 메뉴영역 -->
		<!-- 디렉티브 태그 -->
		<%@ include file="menu.jsp" %>
		
		<!-- 중간 타이틀 영역 -->
		 <div class="p-5 mb-4 text-bg-primary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold"> 도서 편집 </h1>
				<p class="col-md-8 fs-4">Book Editing</p>
			</div>
		 </div>
		 
		 <!-- 본문 영역 -->
		 <%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"></jsp:useBean> --%>
		 <% 
		 	/* BookRepository dao = BookRepository.getInstance();
		 	ArrayList<Book> listOfBooks = dao.getAllBooks(); */
		 %>
		 <div class="row align-items-md-stretch text-center">
			<% 
				/* for(int i = 0; i < listOfBooks.size(); i++){
		 			Book b = listOfBooks.get(i); */
		 		
		 		PreparedStatement ps = null;
				ResultSet rs = null;
				 	
				String sql = "select * from book";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()){
		 			
		 	%>
			<div class="col-md-4">
				<div class="h-100 p-5">
					<img alt="이미지" src="<%= request.getContextPath() %>/resources/images/<%= rs.getString("b_fileName") %>" style="width: 250px; height: 350px;">
					<h3><%= rs.getString("b_name") %> </h3>
					<p> <%= rs.getString("b_author") %> 
					<p> <%= rs.getString("b_publisher") %> 
					<p> <% 
							if(rs.getString("b_description").length()<60){
								out.println(rs.getString("b_description"));
							}else{
								out.println(rs.getString("b_description").substring(0, 60) + " ..."); 
							}
						%>
					<p> <%= NumberFormat.getInstance().format(rs.getInt("b_unitPrice")) %>원 
					<p> <%
							if(edit.equals("update")){
						%>
							<a href="updatebook.jsp?id=<%= rs.getString("b_id") %>" class="btn btn-success">
							수정 &raquo;
							</a>
						<%
							} else if(edit.equals("delete")){
						%>
					<p> <a href="#" class="btn btn-danger" onclick="deleteConfirm('<%= rs.getString("b_id") %>')">
							삭제 &raquo;
						</a>
						<%
							}
						%>
				</div>
			</div>
			<% 
					} 
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			%>
		 </div>
		 
		 <!-- 바닥글 영역 -->
		 <!-- 디렉티브 태그 -->
		 <%@ include file="footer.jsp" %>
	</div>
	<script src="./resources/js/delcheck.js"></script>
</body>
</html>