<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<!DOCTYPE html>
<%@page import="com.deepak.jsp.FunUtils"%>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Demo</title>
</head>
<body>

<h1>JSP Demo</h1>


<h2>JSP Expressions Demo</h2>
<p>Fetching date from the server <%= new java.util.Date() %>
<p>This is a new line </p>

<h5>Calculation demo: 4 * 5 equals <%= 4 * 5 %></h5>

<h2>JSP Scriptlet Demo</h2>

<%
	for(int i = 1; i <= 5; i++) {
		out.println("Count from Scriptlet :" + i +"<br/>");
	}
%>

<h2>JSP Declarations</h2>

<%!
	String makeItLowerCase(String input) {
		return input.toLowerCase();
	}
%>

<p>Using JSP declaration: "LOWER" to lowercase :
<strong><%=  makeItLowerCase("Deepak") %></strong>

<h2>JSP Demo: Using Classes and method calling (with FQDN)</h2>
<p>Converting "upper" to uppercase: <%= com.deepak.jsp.FunUtils.makeItUpperCase("upper") %> </p>

<h2>JSP Demo: Using Classes and method calling (without FQDN)</h2>
<p>Converting "upper" to uppercase: <%= FunUtils.makeItUpperCase("upper") %> </p>


<h2>JSP Built-in Objects</h2>

Request user-agent: <%= request.getHeader("User-Agent") %>
<br/><br/>
Request language: <%= request.getLocale() %>

</body>
</html>