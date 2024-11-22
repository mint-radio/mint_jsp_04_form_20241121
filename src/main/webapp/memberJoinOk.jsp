<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입 정보</h2>
	<hr>
	<%
		String mid = request.getParameter("memberid");//아이디
		String mpw = request.getParameter("memberpw");//비밀번호
		String mname = request.getParameter("membername");//이름
		String mage = request.getParameter("memberage");//나이
		String mgender = request.getParameter("gender");//성별
		//if (mgender="남성"; mgender="여성";}	
		String mphone1 = request.getParameter("phone1");//010 011 016 017
		String mphone2 = request.getParameter("phone2");//010 011 016 017
		String mphone3 = request.getParameter("phone3");//010 011 016 017
		String mintro = request.getParameter("intro");//자기소개
		
		String[] mhobby = request.getParameterValues("hobby");//취미
		
	%>
	<ul>
		<li>아이디 : <%= mid %></li>
		<li>비밀번호 : <%= mpw %></li>
		<li>이름 : <%= mname %></li>
		<li>나이 : <%= mage %></li>
		<li>성별 : <%= mgender %></li>
		<li>전화번호 : <%= mphone1 %> - <%= mphone2 %> - <%= mphone3 %></li>
		<li>취미 :
			<%
				if(mhobby != null) {
					for(int i=0;i<mhobby.length;i++) {
						out.println(mhobby[i]);
					}	
				} else {
					out.println("취미 선택 없음");
				}
			%>
		</li>
		<li>자기소개 : <%= mintro %></li>
	</ul>
</body>
</html>