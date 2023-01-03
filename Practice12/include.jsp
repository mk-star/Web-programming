<%-- 컴퓨터학과 20210753 김민경 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar, java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice12</title>
</head>
<body>
	<div align="center">
	<h2>include 지시어 연습</h2>
		<hr/>
		<table border="0" cellpadding="15" cellspacing="1">
			<tr>
				<td id="box1"><%@ include file="calendar.jsp" %></td>
				<td id="box2"><%@ include file="news.jsp" %></td>
			</tr>
		</table>
	</div>
</body>
</html>