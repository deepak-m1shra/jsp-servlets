<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, com.deepak.jsp.tagsdemo.Student" %>


<%
	List<Student> students = new ArrayList<>();
	students.add(new Student("Deepak", "Mishra", true));
	students.add(new Student("Shahrukh", "Khan", true));
	students.add(new Student("Divit", "Mishra", false));
	students.add(new Student("Vijji", "Kumari", false));
	
	pageContext.setAttribute("myStudents", students);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP: JSTL tags demo</title>
</head>
<body>

	<table border=1>
	
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Is Gold Customer? </th>
		</tr>
		
		<c:forEach var="student" items="${myStudents}">
		<tr>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>${student.goldCustomer}</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>