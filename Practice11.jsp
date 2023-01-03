<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice11</title>
<style>
table {
	border : 1px solid black;
	width : 500px;
	margin : auto;
	margin-top : 15px;
}
td {
	border : 1px solid black;
	padding : 10px 30px 10px 10px;
}
hr {
	border : 1px solid black;
}
h1 {
	text-align : center;
}
</style>
</head>
<body>
<%
out.println("<h1>구구단 출력</h1>");
out.println("<hr/>");
out.println("<table>");
out.println("<tr>");
for(int i = 2; i <= 5; i++) {
	out.println("<td>");
	for(int j = 1; j <= 9; j++)
		out.println(i + " * " + j + " = " + (i * j) + "<br/>");
	out.println("</td>");
}
out.println("<tr>");
for(int i = 6; i <= 9; i++) {
	out.println("<td>");
	for(int j = 1; j <= 9; j++)
		out.println(i + " * " + j + " = " + (i * j) + "<br/>");
	out.println("</td>");
}
out.println("</tr>");
out.println("</table>");
%>
</body>
</html>