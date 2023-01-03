<%-- 컴퓨터학과 20210753 --%>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public String parseDay(int cnt, String day) {
		if(cnt % 7 == 1)
			return "<font color=red>" + day + "</font>";
		else if (cnt % 7 == 0)
			return "<font color=blue>" + day + "</font>";
		else
			return day;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#today {
		text-align:right;
		padding-bottom:30px;
	}
	table, td {
		border:1px solid black;
		border-collapse:collapse;
		width:500px;
		text-align:center;
		height:30px;
	}
	.day {
		font-weight:bold;
	}
</style>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int date = today.get(Calendar.DATE);
	out.println("<div id='today'>");
	out.println("<b>" + year + "-" + (month + 1) + "-" + date + "</b>");
	out.println("</div>");
	
	Calendar cal = Calendar.getInstance();
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH);
	date = cal.get(Calendar.DATE);
	cal.set(year, month, 1);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

	int cnt = 0;
	String[] week={"일", "월", "화", "수", "목", "금", "토"};
	
	for(int i = 1; i < day; i++)
		cnt++;
	out.println("<center>");
	out.println("<table>");
	out.println("<tr>");
	for(int i = 0; i < week.length; i++)
		out.println("<td class='day'>" + parseDay((i + 1), week[i]) + "</td>");
	out.println("</tr>");
	
	out.println("<tr>");
	for(int i = 0; i < cnt; i++)
		out.println("<td>&nbsp</td>");
	for(int i = start; i <= end; i++) {
		if((cnt+i) % 7 == 1)
			out.println("<tr>");
		String str = String.valueOf(i);
		out.println("<td>" + parseDay((cnt+i), str) + "</td>");
		if((cnt+i) % 7 == 0)
			out.println("</tr>");
	}
	int len=0;
	if((cnt+end)%7==0)
		len=(cnt+end)/7;
	else
		len=(cnt+end)/7+1;
	for(int i = 1; i <= 7-(end%7); i++)
		out.println("<td>&nbsp</td>");
	
	out.println("</tr>");
	out.println("</table>");
	out.println("</center>");
%>
</body>
</html>