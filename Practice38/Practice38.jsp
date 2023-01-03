<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="jspbook.pr38.*"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>

<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="login" class="jspbook.pr38.LoginBean" scope="session" />
<jsp:setProperty name="login" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice38</title>
</head>
<body>
<ddwutag:printTable brd="2" color="pink">회원정보</ddwutag:printTable>
</body>
</html>