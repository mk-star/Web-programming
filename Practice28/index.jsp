<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<h1 style="text-align:center;">Alice in Wonderland</h1>
<table cellspacing="20">
	<tr>
	<td><jsp:include page="viewer.jsp" /></td>
	<td><jsp:include page="login.jsp" /></td>
	</tr>
</table>
</body>
</html>