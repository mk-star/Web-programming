<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
	<style>
	#calendar_table {
		border:1px solid black;
		border-collapse:collapse;
		width:300px;
		height:200px;
	}
	.top {
		border:1px solid black;
		text-align:center;
		font-weight:bold;
	}
	.content {
		border:1px solid black;
		text-align:center;
	}
</style>
</head>
<body>
<%
	out.println("<table id=\"calendar_table\">");
	out.println("<tr>");
	out.println("<td class=\"top\"><font color=red>일</font></td>");
	out.println("<td class=\"top\">월</td>");
	out.println("<td class=\"top\">화</td>");
	out.println("<td class=\"top\">수</td>");
	out.println("<td class=\"top\">목</td>");
	out.println("<td class=\"top\">금</td>");
	out.println("<td class=\"top\"><font color=blue>토</font></td>");
	out.println("</tr>");
	for (int i = 0; i < 4; i++) {
		out.println("<tr>");
		for (int j = 0; j < 7; j++)
			out.println("<td class=\"content\">&nbsp;</td>");
		out.println("</tr>");
	}
	out.println("</table>");
%>
</body>
</html>