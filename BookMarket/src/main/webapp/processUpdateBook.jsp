<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnection.jsp" %>

<%
	//String savePath = "./resources/images";
	String savePath = application.getRealPath("/resources/images/");
	int maxSize = 10*1024*1024; /* 10mb */
	String encoding = "utf-8";
	DefaultFileRenamePolicy df = new DefaultFileRenamePolicy();
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, df);
	
	request.setCharacterEncoding("utf-8");
	String bookId = multi.getParameter("bookId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String author = multi.getParameter("author");
	String publisher = multi.getParameter("publisher");
	String releaseDate = multi.getParameter("releaseDate");
	String description = multi.getParameter("description");
	String category = multi.getParameter("category");
	String unitInStock = multi.getParameter("unitInStock");
	String condition = multi.getParameter("condition");
	
	Enumeration<?> en = multi.getFileNames();
	String fname = (String)en.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	Integer price;
	if(unitPrice.isEmpty()){
		price = 0;
	}else{
		price = Integer.valueOf(unitPrice);
	}
	
	long stock;
	if(unitInStock.isEmpty()) {
		stock = 0;
	}else {
		stock = Long.valueOf(unitInStock);
	}
	
	
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql = "select * from book where b_id = ?";
	ps = conn.prepareStatement(sql);
	ps.setString(1, bookId);
	rs = ps.executeQuery();
	
	if(rs.next()){
		if (fileName != null){
			sql = "update book set b_name = ?, b_unitPrice = ?, b_author = ?, b_description = ?, b_publisher = ?, b_category = ?, b_unitsInStock = ?, b_releaseDate = ?, b_condition = ?, b_fileName = ? where b_id = ?";
			ps = conn.prepareStatement(sql);

			ps.setString(1, name);
			ps.setInt(2, price);
			ps.setString(3, author);
			ps.setString(4, description);
			ps.setString(5, publisher);
			ps.setString(6, category);
			ps.setLong(7, stock);
			ps.setString(8, releaseDate);
			ps.setString(9, condition);
			ps.setString(10, fileName);
			ps.setString(11, bookId);
			ps.executeUpdate();
		} else {
			sql = "update book set b_name = ?, b_unitPrice = ?, b_author = ?, b_description = ?, b_publisher = ?, b_category = ?, b_unitsInStock = ?, b_releaseDate = ?, b_condition = ? where b_id = ?";
			ps = conn.prepareStatement(sql);

			ps.setString(1, name);
			ps.setInt(2, price);
			ps.setString(3, author);
			ps.setString(4, description);
			ps.setString(5, publisher);
			ps.setString(6, category);
			ps.setLong(7, stock);
			ps.setString(8, releaseDate);
			ps.setString(9, condition);
			ps.setString(10, bookId);
			ps.executeUpdate();
			
		}
	}
	if(rs != null) rs.close();
	if(ps != null) ps.close();
	if(conn != null) conn.close();
	
	/* 
	Book newBook = new Book(bookid, name, price);
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setDescription(description);
	newBook.setCategory(category);
	newBook.setUnitsInStock(stock);
	newBook.setCondition(condition);
	newBook.setFilename(fileName);
	
	BookRepository dao = BookRepository.getInstance();
	dao.addBook(newBook);
	 */
	 
	 
	response.sendRedirect("editBook.jsp?edit=update");
%>