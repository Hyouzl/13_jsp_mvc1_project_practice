<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_bWrite</title>
</head>
<body>

	<form action="03_bWritePro.jsp" method="post">
		<h2>게시글 작성</h2>
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passwd"></td>
			</tr>	
			<tr>
				<td align="center">글 내용</td>
				<td><textarea rows="10" cols="50" name="content"></td>
			</tr>
			
			<input type="submit" value="글쓰기">
			<input type="submit" onclick="location.href='04_bList.jsp'" value="전체게시글보기">
			
		</table>
	</form>


</body>
</html>