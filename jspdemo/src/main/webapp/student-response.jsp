<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Response </title>
</head>
<body>
	Student details confirmed: <b>${param.firstName} ${param.lastName}</b>
	<br/>
	Country:  ${param.country}
	<br/>
	Favourite Language: ${param.language}
	<br/>
	<%-- Hobbies: <%= Arrays.toString(request.getParameterValues("hobbies")) %> --%>
	Hobbies:
	<%
		String[] hobbies = request.getParameterValues("hobbies");
		for(int i = 0; i < hobbies.length; i++) {
			out.println("<li>" + hobbies[i]+"</li>");
		}
	
	%>
</body>
</html>