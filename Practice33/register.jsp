<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="login" class="jspbook.pr33.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름: <jsp:getProperty name="login" property="id" /><p>
패스워드: <jsp:getProperty name="login" property="pw" /><p>
이메일: <jsp:getProperty name="login" property="email" /><p>
성별: <jsp:getProperty name="login" property="gender" /><p>
생일: <jsp:getProperty name="login" property="birth" /><p>
<hr>
<jsp:getProperty name="login" property="id" />씨는 
<%
	if(login.getGender().intValue() == 0)
		out.println("남성이고, ");
	else if(login.getGender().intValue() == 1)
		out.println("여성이고, ");

	if(login.isGrownUp() == true)
		out.println("성인입니다.");
	else if(login.isGrownUp() == false)
		out.println("성인이 아닙니다.");
%>
</div>
</body>
</html>