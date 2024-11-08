<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String hobby[] = request.getParameterValues("hobby");
		String comment = request.getParameter("comment");
		
	%>
	
	<p>ID : <%= id %>
	<p>Password : <%= password %>
	<p>PhoneNumber : <%= phone1 %> - <%= phone2 %> - <%= phone3 %>
	<p>Gender : <%= gender %>
	<p>Hobby : <% 
					if(hobby != null){
						for(int i=0; i < hobby.length; i++){
							out.println(" " + hobby[i]);
						}
					}
				%>
	<p>Comment : <%= comment %>
	<hr>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Value</th>
		</tr>
			<%
				Enumeration en = request.getParameterNames();
			
				while(en.hasMoreElements()) {
					String name1 = (String)en.nextElement();
					
					out.println("<tr><td>" + name1 + "</td><td>");
					String values[] = request.getParameterValues(name1);
					for(String value : values){
						out.println(value + " " );
					}
					out.println("</td></tr>");
				}
			%>
	</table>
</body>
</html>