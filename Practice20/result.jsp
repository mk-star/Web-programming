<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<% 
	out.println("<h1>전달된 파라미터 이름들</h1>");
	Enumeration<String> e = request.getParameterNames();
	while(e.hasMoreElements()) {
		String s = e.nextElement();
		out.println(s + "<br/>");
	}
	out.println("<hr/>");
	out.println("타입: " + request.getParameter("type") + "<br/>");
	out.println("아이디: " + request.getParameter("strID") + "<br/>");
	out.println("패스워드: " + request.getParameter("strPwd") + "<br/>");
%>
</body>
</html>