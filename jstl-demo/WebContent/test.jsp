<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Demo</title>
</head>
<body>

<c:set var="currentDateTime" value="<%=new java.util.Date()%>" />

<h1>Date value from JSTL library "currentDateTime" is ${currentDateTime}</h1>

</body>
</html>