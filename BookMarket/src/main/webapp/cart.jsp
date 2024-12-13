<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<title>장바구니</title>
</head>
<body>
	
	<div class="container py-4">
	<!-- 메뉴영역 -->
   <%@ include file="menu.jsp"%>	

	<!-- 중간타이틀 영역 -->
   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">장바구니</h1>
        <p class="col-md-8 fs-4">Cart</p>      
      </div>
    </div>
  	
  	<!-- 본문 영역 -->
	 <div class="row align-items-md-stretch ">	 	
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="#" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="#" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				
				<tr>
					<td> 도서코드-도서명 </td>
					<td> 가격 </td>
					<td> 재고수 </td>
					<td>합계 </td>
					<td><a href="#" class="badge text-bg-danger">삭제</a></td>
				</tr>
				
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th></th>
					<th></th>
				</tr>
			</table>
			<a href="./books.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
	</div>
	
	<!-- 바닥글영역 -->
	<jsp:include page="footer.jsp" />
</div>
</body>
</html>