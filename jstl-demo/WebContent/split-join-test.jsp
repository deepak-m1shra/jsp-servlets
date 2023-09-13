<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Split Join Test using JSTL Function Tags</title>
</head>
<body>

<h3>Split/Join Demo</h3>

<c:set var="cities" value="Pune,Mumbai,Chennai,Kolkata,Bangalore,Delhi"/>
<c:set var="citiesArray" value="${fn:split(cities, ',')}" />

<h4>Split Demo</h4>
<c:forEach var="city" items="${citiesArray}">
	City name :: ${city} <br/>
</c:forEach>

<h4>Join Demo</h4>
<c:set var="joined" value="${fn:join(citiesArray, '$$')}"/>

Join Result: ${joined}

</body>
</html>