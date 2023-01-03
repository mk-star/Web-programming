<%-- 컴퓨터학과 20210753 김민경 --%>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice15</title>
</head>
<body>
<%
	int year=1919;
	int month=3;
	Calendar cal=Calendar.getInstance();
	cal.set(year, month-1, 1);	
	int date=cal.get(Calendar.DATE);
	int day=cal.get(Calendar.DAY_OF_WEEK);
	int start=cal.getMinimum(Calendar.DATE);
	int end=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.println("<h2>" + year + "년 " + month + "월" + "</h2>");
	out.println("<hr/>");
	
	int cnt = 0;
	for(int i = 0; i < day - 1; i++) {
		out.println("&nbsp&nbsp&nbsp&nbsp");
		cnt++;
	}
	for(int j = start; j <= end; j++) {
		if(cnt != 0 && cnt % 7 == 0)
			out.println("<br/>");
		out.println(j + "&nbsp&nbsp");
		cnt++;
	}
%>
</body>
</html>