<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서목록</title>
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
				<h1 class="display-5 fw-bold"> 도서목록 </h1>
				<p class="col-md-8 fs-4">BookList</p>
			</div>
		 </div>
		 
		 <!-- 본문 영역 -->
		 <%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"></jsp:useBean> --%>
		 <% 
		 	BookRepository dao = BookRepository.getInstance();
		 	ArrayList<Book> listOfBooks = dao.getAllBooks();
		 %>
		 <div class="row align-items-md-stretch text-center">
			<% 
				for(int i = 0; i < listOfBooks.size(); i++){
		 			Book b = listOfBooks.get(i);
		 	%>
			<div class="col-md-4">
				<div class="h-100 p-5">
					<img alt="이미지" src="<%= request.getContextPath() %>/resources/images/<%= b.getFilename() %>" style="width: 250px; height: 350px;">
					<h3><%= b.getName() %> </h3>
					<p> <%= b.getAuthor() %> 
					<p> <%= b.getPublisher() %> 
					<p> <% 
							if(b.getDescription().length()<60){
								out.println(b.getDescription());
							}else{
								out.println(b.getDescription().substring(0, 60) + " ..."); 
							}
						%>
					<p> <%= NumberFormat.getInstance().format(b.getUnitPrice()) %>원 
					<p> <a href="book_detail.jsp?id=<%= b.getBookId() %>" class="btn btn-secondary">
							상세정보 &raquo;
						</a>
				</div>
			</div>
			<% } %>
		 </div>
		 
		 <!-- 바닥글 영역 -->
		 <!-- 디렉티브 태그 -->
		 <%@ include file="footer.jsp" %>
	</div>
</body>
</html>