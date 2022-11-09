<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null; //값을 출력할 필요x
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_ex?serverTimezone=UTC", "root", "root");
			
			request.setCharacterEncoding("utf-8"); // request (httpSeveletRequest클래스) 셋팅?
			String id = request.getParameter("id");
			String pw = request.getParameter("passwd");
			String name = request.getParameter("name");
			
			pstmt = conn.prepareStatement("INSERT INTO MEMBER VALUES (?,?,?,NOW())");
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			
			pstmt.executeUpdate();
			
		
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			pstmt.close();
			conn.close();
		}
		
	%>
	
	<script>
		alert("회원가입되었습니다.");
		location.href= "00_main.jsp";
	</script>
	
	
	

</body>
</html>