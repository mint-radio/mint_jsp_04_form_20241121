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
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
	%>
	<h2>
		로그인하신 아이디는 <%= memberId %>이고 비밀번호는 <%= memberPw %>입니다!
	</h2>
</body>
</html>