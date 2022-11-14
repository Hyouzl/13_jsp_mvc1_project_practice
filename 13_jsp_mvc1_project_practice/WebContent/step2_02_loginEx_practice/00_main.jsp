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
		String id = (String)session.getAttribute("id");
	
		if (id != null) {
	%>

		<h1>JUST DO IT!</h1>
		<p><a href="01_insert.jsp">Join!</a></p>
		<p><a href="">Login!</a></p>
		
	<%
		}
		else {
			
	%>
		<h1>Welcom! <%=id %></h1>	
		<p>Logout</p>
		<p>Delete</p>
		<p>Update</p>
	
	<%		
		}
	
	%>	

</body>
</html>