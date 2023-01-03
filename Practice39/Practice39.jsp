<!-- 20210753 김민경 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr39.*" %>
<!DOCTYPE html>
<jsp:useBean id="lecture" class="jspbook.pr39.LectureBean" />
<jsp:setProperty name="lecture" property="*" />
<jsp:useBean id="am" class="jspbook.pr39.LectureManager" scope="session" />
<html>
<head>
<meta charset="UTF-8">
<title>Practice35</title>
</head>
<body>
<%
	String[] typeNames = lecture.getTypenames();
	String[] titleNames = lecture.getTitlenames();
	String[] dayNames = lecture.getDaynames();
	
	out.println("<div align=center>");
	out.println("<form name=form1 method=POST action=Practice39.jsp>");
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
		for(LectureBean lb : am.getLectureList())
			out.println(lb.toString() + "<br>");
		am.buildMatrix();
		am.printMatrix(am.getTypeMatrix());
		am.printMatrix(am.getTitleMatrix());
		am.printMatrix(am.getSpanMatrix());
	}
	out.println("</div>");
%>
</body>
</html>