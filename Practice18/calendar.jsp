<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
	<%
		String str_year=request.getParameter("YEAR");
		String str_month=request.getParameter("MONTH");
		int year, month, day;
		int start, end;
		int cnt=0;
		
		Calendar cal=Calendar.getInstance();
		if(str_year == null|| str_month == null) {
			year=cal.get(Calendar.YEAR);
			month=cal.get(Calendar.MONTH) +1;
		}
		else {
			year=Integer.parseInt(str_year);
			month=Integer.parseInt(str_month);
		}
		cal.set(year, month - 1, 1);
		start=cal.getMinimum(Calendar.DATE);
		end=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		day=cal.get(Calendar.DAY_OF_WEEK);
		
		out.println("<h2>" + year + "년 " + month + "월" + "</h2>");
		out.println("<hr/>");
		for(int i = 1; i < day; i++) {
			out.println("&nbsp&nbsp&nbsp");
			cnt++;
		}
		for(int i = start; i <= end; i++) {
			out.println(i + "&nbsp&nbsp&nbsp");
			if((i+cnt)%7==0)
				out.println("<br/>");			
			cnt++;
		}
	%>
</body>
</html>