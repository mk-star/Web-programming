<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pro03.*"%>
<!DOCTYPE html>
<jsp:useBean id="lecture" class="jspbook.pro03.LectureBean" />
<jsp:setProperty name="lecture" property="*" />
<jsp:useBean id="am" class="jspbook.pro03.LectureManager" scope="session" />
<html>
<head>
<meta charset="UTF-8">
<title>problem03</title>
<style>
tr, td {
	width:100px;
	height:55px;
}
.left_column {
	font-weight:bold;
	text-align:center;
}
</style>
</head>
<body>
<div align="center">
<%
	String[] typeNames = lecture.getTypenames();
	String[] titleNames = lecture.getTitlenames();
	String[] dayNames = lecture.getDaynames();
	
	out.println("<form name=form1 method=POST action=Problem03.jsp>");
	out.println("과목타입:"); 
	out.println("<select name=type>");
		for(int i = 0; i < typeNames.length; i++) 
			out.println("<option value=" + i + ">" + typeNames[i] + "</option>");
	out.println("</select>");
	out.println("과목명:"); 
	out.println("<select name=title>");
	for(int i = 0; i < titleNames.length; i++)
		out.println("<option value=" + i + ">" + titleNames[i] + "</option>");
	out.println("</select>");
	out.println("요일:"); 
	out.println("<select name=day>");
	for(int i = 0; i < dayNames.length; i++)
		out.println("<option value=" + i + ">" + dayNames[i] + "</option>");
	out.println("</select>");
	out.println("시간:"); 
	out.println("<select name=time>");
	for(int i = 0; i < am.getTimes(); i++)
		out.println("<option value=" + i + ">" + (i + 1) + "</option>");
	out.println("</select>");
	out.println("연강여부:"); 
	out.println("<select name=consecutive>");
	for(int i = 0; i < am.getTimes(); i++)
		out.println("<option value=" + i + ">" +  (i + 1) + "</option>");
	out.println("</select>");
	out.println("<input type=submit value=등록>");
	out.println("</form>");
	out.println("<hr>");

	if(lecture.getType() != -1 && lecture.getTitle() != -1 && lecture.getDay() != -1 && lecture.getTime() != -1 && lecture.getConsecutive() != -1) {	
		am.add(lecture);
		am.buildMatrix();
%>
	<h3>강의 시간표</h3>
	<table border="1" style="border-collapse:collapse; text-align:center;">
		<tr>
			<td class="left_column">2학년</td>
			<th>월</th><th>화</th><th>수</th><th>목</th><th>금</th></tr>
	<%
			int[][] lectureType = am.getTypeMatrix();
			int[][] lectureTitle = am.getTitleMatrix();
			int[][] consecutive = am.getSpanMatrix();
			
			for(int i = 0; i < am.getTimes(); i++) {
				out.println("<tr>");
				out.println("<td class=left_column>" + (i + 1) + "</<td>");
				for(int j = 0; j < am.getDays(); j++) {
					if(lectureType[i][j] == 0 && lectureTitle[i][j] == -1 && consecutive[i][j] == 1)
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
<p><hr><p>
<%
		for(LectureBean lb : am.getLectureList())
			out.println(lb.toString() + "<br>");
		
		am.printMatrix(am.getTypeMatrix());
		am.printMatrix(am.getTitleMatrix());
		am.printMatrix(am.getSpanMatrix());
	}
%>
</div>
</body>
</html>