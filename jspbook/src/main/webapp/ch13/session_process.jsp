<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("id");
	String user_pwd = request.getParameter("passwd");
	
	//로그인 성공
	if(user_id.equals("admin") && user_pwd.equals("1234")){
		session.setAttribute("userID", user_id);
		session.setAttribute("userPW", user_pwd);
		out.println("세션 설정 성공 <br>");
		out.println(user_id + "님 환영합니다. <br><br>");
		
		out.println("세션 설정 값 가져오기 <br>");
		out.println("Session ID : " + session.getId() + "<br>");
		out.println("Session Name : " + session.getAttribute("userID") + "<br>");
		out.println("Session Password : " + session.getAttribute("userPW") + "<br><br>");
		
		//열거형으로 가져오기
		Enumeration en = session.getAttributeNames();
		out.println("세션 설정 값 열거형으로 가져오기<br>");
		while(en.hasMoreElements()){
			String name = (String)en.nextElement();
			String value = (String)session.getAttribute(name);
			out.println("Session Name : " + name + "<br>");
			out.println("Session value : " + value + "<br><br>");
		}
		
		//세션삭제
		//session.removeAttribute("userID");
		
		//세션모두삭제
		//session.invalidate();
		out.println("Session Name : " + session.getAttribute("userID") + "<br>");
		out.println("Session Password : " + session.getAttribute("userPW") + "<br><br>");
	} else {
		out.println("세션 설정 실패");
	}
%>