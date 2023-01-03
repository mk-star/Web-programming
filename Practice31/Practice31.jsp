<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice31</title>
<%!
int[][] lectureType = {
	{0, 1, 1, 0, 1},
	{1, 0, 0, 0, 2},
	{0, 0, 2, 0, 4},
	{2, 3, 0, 3, 0},
	{0, 0, 0, 2, 0},
	{0, 0, 0, 0, 0}
		
};
int[][] consecutive = {
	{1, 2, 1, 1, 1},
	{2, 0, 1, 1, 1},
	{0, 1, 1, 1, 4},
	{2, 1, 1, 1, 0},
	{0, 1, 1, 2, 0},
	{1, 1, 1, 0, 0}
};
int[][] lectureTitle = {
	{-1, 4, 5, -1, 5},
	{3, -1, -1, -1, 1},
	{-1, -1, 1, -1, 7},
	{0, 6, -1, 6, 1},
	{-1, 1, -1, 2, -1},
	{-1, -1, -1, -1, -1}
};
String[] titleNames = {
	"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론",
	"자료구조", "네트워크", "창의와감성", "사회봉사"	
};
%>
<style>
tr, td {
	width:100px;
	height:50px;
	text-align:center;
}
.left_column {
	font-weight:bold;
	text-align:center;
}
</style>
</head>
<body>
<div align="center">
<h3>강의 시간표</h3>
<table border="1" style="border-collapse:collapse">
	<tr>
		<td class="left_column">2학년</td>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
	</tr>
	<%
	for(int i = 0; i < lectureType.length; i++) {
		out.println("<tr>");
		out.println("<td class=left_column>" + (i + 1) + "</<td>");
		for(int j = 0; j < lectureType[i].length; j++) {
			if(lectureType[i][j]==0 && consecutive[i][j] == 1)
				out.println("<td>&nbsp</td>");
			else if(consecutive[i][j] >= 1) {
				if(lectureType[i][j] == 1)
					out.println("<td style=background-color:#FFE08C rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
				else if(lectureType[i][j] == 2)
					out.println("<td style=background-color:#B2CCFF rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
				else if(lectureType[i][j] == 3)
					out.println("<td style=background-color:#BDBDBD rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
				else if(lectureType[i][j] == 4)
					out.println("<td rowspan=" + consecutive[i][j] + ">" + titleNames[lectureTitle[i][j]] + "</td>");
			}
		}	
		out.println("</tr>");
	}
	%>
</table>
</div>
</body>
</html>