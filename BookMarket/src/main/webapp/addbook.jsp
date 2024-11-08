<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록</title>
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
				<h1 class="display-5 fw-bold">도서 등록</h1>
				<p class="col-md-8 fs-4">Book Addition</p>
			</div>
		 </div>
		 
		 <!-- 본문 영역 -->
		 <div class="row align-items-md-stretch">
			<form action="processAddBook.jsp" method="post" enctype="multipart/form-data">
				<div class="mb-3 row">
					<label class="col-sm-2" for="bookid">도서코드</label>
					<div class="col-sm-3">
						<input type="text" name="bookid" class="form-control" id="bookid">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="name">도서명</label>
					<div class="col-sm-3">
						<input type="text" name="name" class="form-control" id="name">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="unitPrice">가격</label>
					<div class="col-sm-3">
						<input type="text" name="unitPrice" class="form-control" id="unitPrice">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="author">저자</label>
					<div class="col-sm-3">
						<input type="text" name="author" class="form-control" id="author">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="publisher">출판사</label>
					<div class="col-sm-3">
						<input type="text" name="publisher" class="form-control" id="publisher">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="releaseDate">출판일</label>
					<div class="col-sm-3">
						<input type="text" name="releaseDate" class="form-control" id="releaseDate">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="description">상세정보</label>
					<div class="col-sm-5">
						<textarea name="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요" id="description"></textarea>
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="category">분류</label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control" id="category">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2" for="unitInStock">재고수</label>
					<div class="col-sm-3">
						<input type="text" name="unitInStock" class="form-control" id="unitInStock">
					</div>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2">상태</label>
					<div class="col-sm-5">
						<label class="col-sm-2" for="New">
							<input type="radio" name="condition" value="New" id="New"> 신규도서
						</label>
						<label class="col-sm-2" for="Old">
							<input type="radio" name="condition" value="Old" id="Old"> 중고도서
						</label>
						<label class="col-sm-2" for="EBook">
							<input type="radio" name="condition" value="EBook" id="EBook"> E-Book
						</label>
					</div>
				</div>
				
				<div class="mb-3 row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5">
						<input type="file" name="BookImage" class="form-control">
					</div>
				</div>
				
				<div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="등록">
					</div>
				</div>
			</form>
		 </div>
		 
		 <!-- 바닥글 영역 -->
		 <!-- 디렉티브 태그 -->
		 <%@ include file="footer.jsp" %>
	</div>
</body>
</html>