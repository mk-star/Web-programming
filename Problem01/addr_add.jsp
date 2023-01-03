<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pro01.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.pro01.AddrBean" />
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="jspbook.pro01.AddrManager" scope="application" />
<%
	am.add(addr);
%>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2>
이름: <jsp:getProperty name="addr" property="username" /><p>
전화번호: <jsp:getProperty name="addr" property="tel" /><p>
이메일: <jsp:getProperty name="addr" property="email" /><p>
성별: <jsp:getProperty name="addr" property="gender" /><p>
그룹: <jsp:getProperty name="addr" property="group" /><p>
<hr>
<a href="addr_list.jsp">전체 목록 보기</a><%="&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"%><a href="addr_list_group.jsp">그룹별 목록 보기</a>
</div>
</body>
</html>