<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message">
	<div class="container py-4">
		<!-- 메뉴영역 -->
		<!-- 디렉티브 태그 -->
		<%@ include file="menu.jsp" %>
		
		
		<!-- 중간 타이틀 영역 -->
		 <div class="p-5 mb-4 text-bg-primary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold"><fmt:message key="title"></fmt:message></h1>
				<p class="col-md-8 fs-4">Book Addition</p>
			</div>
		 </div>
		 
		 <!-- 본문 영역 -->
		 <div class="row align-items-md-stretch">
		 	<div class="text-end">
		 		<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
		 		<a href="logout.jsp" class="btn btn-success pull right">LogOut</a>
		 	</div>
			<form name="newBook" action="processAddBook.jsp" method="post" enctype="multipart/form-data">
				<div class="mb-3 row">
					<label class="col-sm-2" for="bookId"><fmt:message key="bookId"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="bookId" class="form-control" id="bookId">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="name"><fmt:message key="name"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="name" class="form-control" id="name">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="unitPrice"><fmt:message key="unitPrice"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="unitPrice" class="form-control" id="unitPrice">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="author"><fmt:message key="author"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="author" class="form-control" id="author">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="publisher"><fmt:message key="publisher"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="publisher" class="form-control" id="publisher">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="releaseDate"><fmt:message key="releaseDate"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="releaseDate" class="form-control" id="releaseDate">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="description"><fmt:message key="description"></fmt:message></label>
					<div class="col-sm-5">
						<textarea name="description" cols="50" rows="2" class="form-control" placeholder=<fmt:message key="description_placeholder"></fmt:message> id="description"></textarea>
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="category"><fmt:message key="category"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control" id="category">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="unitInStock"><fmt:message key="unitsInStock"></fmt:message></label>
					<div class="col-sm-3">
						<input type="text" name="unitInStock" class="form-control" id="unitInStock">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="condition"></fmt:message></label>
					<div class="col-sm-5">
						<label class="col-sm-2" for="New">
							<input type="radio" name="condition" value="New" id="New"> <fmt:message key="condition_New"></fmt:message>
						</label>
						<label class="col-sm-2" for="Old">
							<input type="radio" name="condition" value="Old" id="Old"> <fmt:message key="condition_Old"></fmt:message>
						</label>
						<label class="col-sm-2" for="EBook">
							<input type="radio" name="condition" value="EBook" id="EBook"> <fmt:message key="condition_Ebook"></fmt:message>
						</label>
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2"><fmt:message key="bookImage"></fmt:message></label>
					<div class="col-sm-5">
						<input type="file" name="BookImage" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" onclick="CheckAddBook()" class="btn btn-primary" value="<fmt:message key="button"></fmt:message>">
					</div>
				</div>
			</form>
		 </div>
		 <!-- 바닥글 영역 -->
		 <!-- 디렉티브 태그 -->
		 <%@ include file="footer.jsp" %>
	</div>
	</fmt:bundle>
	<script type="text/javascript" src="/resources/js/validation.js"></script>
</body>
</html>