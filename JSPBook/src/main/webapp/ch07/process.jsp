<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String saveDir = "c:/upload/";
	int maxSize = 10*1024*1024;
	String encoding = "utf-8";
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	//폴더생성
	File dir = new File(saveDir);
	if( !dir.exists()) {
		dir.mkdir();
	}
	
	MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, policy);
	
	Enumeration<?> en = multi.getParameterNames();
	while(en.hasMoreElements()) {
		String name = (String) en.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " : " + value + "<br>");
	}
	out.println("<hr>");
	Enumeration<?> files = multi.getFileNames();
	while(files.hasMoreElements()) {
		String name = (String)files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		out.println("요청파라미터 이름 : " + name + "<br>");
		out.println("저장 파일명 : " + filename + "<br>");
		out.println("실제 파일명 : " + original + "<br>");
		out.println("파일유형 : " + type + "<br>");
		out.println("저장경로 : " + file.getPath() + "<br>");
		out.println("저장길이 : " + file.length() + "<br>");
		out.println("--------------------------------<br>");
	}
	
	
%>