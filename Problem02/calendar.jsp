<%@page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%! 
	public String parseDay(int cnt, String day) {
		if(cnt % 7 == 1)
			return "<font color='red'>" + day + "</font>";
		else if (cnt % 7 == 0)
			return "<font color='blue'>" + day + "</font>";
		else
			return day;
	}
%>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
	table {
		width:900px;
	}
	#table2, #table2 td {
		border:3px solid #ECE9D8;
		border-collapse:collapse;
		text-align:center;
	}
	.date_col {
		height:40px;
	}
</style>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	int tYear = today.get(Calendar.YEAR);
	int tMonth = today.get(Calendar.MONTH);
	int tDate = today.get(Calendar.DATE);
	
	int year = tYear;
	int month = tMonth + 1;
	String sYear = request.getParameter("YEAR");
	if(sYear != null) {
		year = Integer.parseInt(sYear);
	}
	String sMonth = request.getParameter("MONTH");
	if(sMonth != null) {
		month = Integer.parseInt(sMonth);
		if(month > 12)
			month = 12;
		if(month < 1)
			month = 1;
	}
%>
<div align="center">
<table id="table1" style="font-weight:bold">
<tr>
<td colspan="2" style="text-align:left; border:hidden;">
	<a href = "calendar.jsp?YEAR=<%=year-1%>&MONTH=<%=month%>" style="text-align:left;"> ◀ </a><%=year%>년<a href = "calendar.jsp?YEAR=<%=year + 1%>&MONTH=<%=month%>"> ▶ </a>
<td colspan="3" style="text-align:center; border:hidden;">	
	<a href = "calendar.jsp?YEAR=<%=year%>&MONTH=<%=month - 1%>" style="text-align:center;"> ◀ </a><%=month%>월<a href = "calendar.jsp?YEAR=<%=year%>&MONTH=<%=month + 1%>"> ▶ </a>
</td>
<td colspan="2" style = "text-align:right; border:hidden;"><%=tYear%>-<%=tMonth + 1%>-<%=tDate%></td>
</tr>
</table><p>
<table id="table2">
<%
	Calendar cal = Calendar.getInstance();
	cal.set(year, (month - 1), 1);
	
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

	int start_week = cal.get(Calendar.DAY_OF_WEEK);
	int i, j, count  = 0;
	int dateCount = 1;
	
	String[] week={"일", "월", "화", "수", "목", "금", "토"};
	out.println("<tr>");
	for(i = 0; i < week.length; i++)
		out.println("<td>" + parseDay((i + 1), week[i]) + "</td>");
	out.println("</tr>");
	
	out.println("<tr>");
	for(i = 1; i < start_week; i++) {
		out.println("<td class=date_col>&nbsp</td>");
		dateCount++;
	}
	for(i = start; i <= 8 - start_week; i++) {
		String str = String.valueOf(i);
		out.println("<td class=date_col>" + parseDay(dateCount, str) + "</td>");
		dateCount++;
	}
	out.println("</tr>");
	out.println("<tr>");
	for(j = i; j <= end; j++) {
		String str = String.valueOf(j);
		out.println("<td class=date_col>" + parseDay(dateCount, str) + "</td>");
		count++;
		dateCount++;
		if(count % 7 == 0) {
			out.println("</tr>");
			out.println("<tr>");
		}
	}
	if(count % 7 != 0) {
		for(i = 1; i <= 7-(count % 7); i++)
			out.println("<td class=date_col>&nbsp</td>");
	}
	out.println("</tr>");
%>
</table>
</div>
</body>
</html>