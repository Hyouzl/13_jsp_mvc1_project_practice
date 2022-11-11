<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	
	<%
		
		String id = (String)session.getAttribute("id");

		if (id == null) {
	%>
		<h1>JUST DO IT</h1>
		<p><a href="01_insert.jsp">JOIN</a></p>
		<p><a href="02_login.jsp">LOGIN</a></p>
		
	<% 
		}
		else {
	%>
		<h1>Welcom <%=id %>!!</h1>
		<p><a href>Logout</a></p>
		<p><a href>Delete</a></p>
		<p><a href>update</a></p>		
	<% 		
	
		}
	%>


</body>
</html>