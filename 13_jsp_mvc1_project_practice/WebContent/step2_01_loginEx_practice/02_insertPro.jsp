<%@page import="step02_00_loginEx.MemberDao"%>
<%@page import="step02_00_loginEx.MemberDto"%>
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
		request.setCharacterEncoding("utf-8");
	
		MemberDto memberDto = new MemberDto();
		
		
		memberDto.setId(request.getParameter("id"));
		memberDto.setPasswd(request.getParameter("passwd"));
		
	
	%>
	

</body>
</html>