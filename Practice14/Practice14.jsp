<%-- 컴퓨터학과 20210753 김민경 --%>
<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice14</title>
</head>
<body>
<%
	Calendar cal=Calendar.getInstance();
	int year=cal.get(Calendar.YEAR);
	int month=cal.get(Calendar.MONTH);
	int date=cal.get(Calendar.DATE);
	int day=cal.get(Calendar.DAY_OF_WEEK);
	int start=cal.getMinimum(Calendar.DATE);
	int end=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	String[] week={"일", "월", "화", "수", "목", "금", "토"};
	
	out.println("오늘은 " + year + "년 " + (month + 1) + "월 " + date + "일 " + week[day - 1] + "요일입니다.<br/><br/>");
	out.println("이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br/><br/>");
	
	cal.set(2001,Calendar.JULY,11);
	year=cal.get(Calendar.YEAR);
	month=cal.get(Calendar.MONTH);
	date=cal.get(Calendar.DATE);
	day=cal.get(Calendar.DAY_OF_WEEK);
	
	out.println("내 생일 " + year + "년 " + (month + 1) + "월 " + date + "일은 " + week[day - 1] + "요일입니다.<br/><br/>");
%>
</body>
</html>