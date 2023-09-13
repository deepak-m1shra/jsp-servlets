<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Function Tags</title>
</head>
<body>

<c:set var="data" value="jstlfunctiontesting" />

Length of string <strong>${data}</strong> : ${fn:length(data)}
<br/><br/>

Uppercase of string <strong>${data}</strong> : ${fn:toUpperCase(data)}
<br/><br/>

Does the string <strong>${data}</strong>  starts with "jstl"? ${fn:startsWith(data, "jstl")}

</body>
</html>