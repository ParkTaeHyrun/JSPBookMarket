<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- 메뉴영역 -->
	<header class="pb-3 mb-4 border-bottom">
		<div class="container text-bg-white">
			<div class="d-flex">
				<!-- 홈 아이콘 -->
				<a href="./welcome.jsp" class="d-flex align-items-center text-dark text-decoration-none"> 
					<span class="justify-content-between">
						<i class="fa-solid fa-house"></i> Home
					</span>
				</a>
				<!-- 메뉴 -->
				<ul class="nav">
	  				<li class="nav-item">
	    				<a class="nav-link" href="./books.jsp">도서 목록</a>
	  				</li>
	  				<li class="nav-item">
	    				<a class="nav-link" href="./addbook.jsp">도서 등록</a>
	  				</li>
	  				<li class="nav-item">
	    				<a class="nav-link" href="#">도서 수정</a>
	  				</li>
	  				<li class="nav-item">
	    				<a class="nav-link" href="#">도서 삭제</a>
	  				</li>
				</ul>
			</div>
		</div>
	</header>
</body>
</html>