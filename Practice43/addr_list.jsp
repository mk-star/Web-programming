<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr43.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="am" class="jspbook.pr43.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>
<table border="1" width="500px" style="text-align:center;">
	<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
	<td>그룹</td>
	</tr>
	<c:forEach var="addr" items="${am.getAddrList()}">
	<tr>
		<td><c:out value="${addr.username}" /></td>
		<td><c:out value="${addr.tel}" /></td>
		<td><c:out value="${addr.email}" /></td>
		<td><c:out value="${addr.gender}" /></td>
		<td><c:out value="${addr.group}" /></td>
	</tr>
	</c:forEach>
</table>
</div>
</body>
</html>