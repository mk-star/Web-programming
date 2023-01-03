<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr42.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="login" class="jspbook.pr42.StudentBean" scope="page"/>
<jsp:setProperty name="login" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<div align="center">
<h2>등록내용</h2><p>
이름: <c:out value="${login.id}" /><p>
패스워드: <c:out value="${login.pw}"/><p>
이메일: <c:out value="${login.email}"/><p>
성별: <c:out value="${login.gender}" /><p>
생일: <c:out value="${login.birth}" /><p>
<hr>
<c:out value="${login.id}" />씨는 
<c:if test="${login.gender == 1}">
	<c:out value="여성이고, " />
</c:if>
<c:if test="${login.gender == 0}">
	<c:out value="남성이고, " />
</c:if>
<c:forTokens var="birth" varStatus="i" items="${login.birth}" delims="-">
	<c:if test="${i.first}">
		<c:set var="age" value="${birth}" />
	</c:if>
</c:forTokens>
<c:if test="${(2022 - age + 1) >= 20}" var="result">
	<c:out value="성인입니다." />
</c:if>
<c:if test="${result == false}">
	<c:out value="성인이 아닙니다." />
</c:if>
</div>
</body>
</html>