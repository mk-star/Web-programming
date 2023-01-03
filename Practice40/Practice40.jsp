<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice40</title>
</head>
<body>
<c:set var="gNames" value="${['남', '여']}" />
<c:set var="telCompany" value="${['010', '011', '017', '070']}" />
<c:set var="hobbyNames" value="${['뉴스', '맛집', '책', '영화', '여행']}" />

id: ${param.id}<br>
pw: ${param.pw}<br>
gender: ${param.gender}<br>
phone1: ${param.phone1}<br>
phone2: ${param.phone2}<br>
phone3: ${param.phone3}<br>
email: ${param.email}<br>
birth: ${param.birth}<br>
hobby: 
<c:forEach var="h" varStatus="i" items="${paramValues.hobby}" >
	${h}/
</c:forEach><br>
memo: ${param.memo}<br>
<hr>
<h2>Processing Parameters</h2><p>
id: ${param.id}<br>
pw: ${param.pw}<br>
gender: ${gNames[param.gender]}<br>
phone1: ${telCompany[param.phone1]}<br>
phone2: ${param.phone2}<br>
phone3: ${param.phone3}<br>
email: ${param.email}<br>
birth: ${param.birth}<br>
hobby:
<c:forEach var="h" varStatus="i" items="${paramValues.hobby}" >
	${hobbyNames[h]}/
</c:forEach><br>
memo: ${param.memo}<br>
</body>
</html>