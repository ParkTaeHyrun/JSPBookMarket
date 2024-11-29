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
	String sql = "insert into book values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	ps = conn.prepareStatement(sql);
	
	ps.setString(1, bookId);
	ps.setString(2, name);
	ps.setInt(3, price);
	ps.setString(4, author);
	ps.setString(5, description);
	ps.setString(6, publisher);
	ps.setString(7, category);
	ps.setLong(8, stock);
	ps.setString(9, releaseDate);
	ps.setString(10, condition);
	ps.setString(11, fileName);
	
	ps.executeUpdate();
	
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
	 
	 
	response.sendRedirect("books.jsp");
%>
