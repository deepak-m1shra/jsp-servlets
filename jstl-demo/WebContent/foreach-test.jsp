<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String[] cities = {"Mumbai", "Chennai", "Pune", "Delhi", "Kolkata"};
	pageContext.setAttribute("myCities", cities);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page Context Attributes Demo</title>
</head>
<body>
	<c:forEach var="city" items="${myCities}">
		${city} <br/>
	</c:forEach>
</body>
</html>