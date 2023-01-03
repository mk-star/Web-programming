<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice10</title>
<style>
table {
	border : 1px solid black;
	width : 550px;
	height : 160px;
	margin : auto;
}
th, td {
	border : 1px solid black;
}
</style>
</head>
<body>
<% 
out.println("<table>");
out.println("<tr>");
out.println("<th><font color = red>일</font></th>");
out.println("<th>월</th>");
out.println("<th>화</th>");
out.println("<th>수</th>");
out.println("<th>목</th>");
out.println("<th>금</th>");
out.println("<th><font color = blue>토</font></th>");
out.println("</tr>");
for (int i = 0; i < 4; i++) {
	out.println("<tr>");
	for (int j = 0; j < 7; j++)
		out.println("<td>&nbsp;</td>");
	out.println("</tr>");
}
out.println("</table>");
%>
</body>
</html>