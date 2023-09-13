<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Session Demo: Todo List</title>
</head>
<body>

<!--1. Create Form -->

<form action="todo-demo.jsp">
	Add new item: <input type="text" placeholder="Enter todo" name="entry"/>
	<input type="submit" value="Submit" />
	<button>Clear</button>
</form>

<br><br>

Item entered: <%= request.getParameter("entry") %>

<hr>

<!--2. Add item to the list  -->
<%
	// Get ToDo items from the session
	List<String> items = (List<String>)session.getAttribute("todolist");
	
	// if ToDo items doesn't exist, create a new one
	if(items == null) {
		items = new ArrayList<String>();
		session.setAttribute("todolist", items);
	}
	
	// see if there's form data to add
	String entry = request.getParameter("entry");
	
	boolean isNotEmpty = entry!= null && entry.length() != 0;
	boolean isNotDuplicate = !items.contains(entry);
	
	if(isNotEmpty && isNotDuplicate) {
		items.add(entry);
	}

%>


<!--3. Display the todo list  -->
<h3>Todo List</h3>
<ol>

<%
	for(String item: items) {
		out.println("<li>" +item + "</li>");
	}
%>
</ol>

</body>
</html>