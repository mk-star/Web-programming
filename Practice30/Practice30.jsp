<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
	String[] days = {"월", "화", "수", "목", "금"};
	String[] times = {"1", "2", "3", "4", "5", "6", "7", "8"};
	String[] consecutives = {"1", "2", "3", "4", "5", "6", "7", "8"};
	
	out.println("<form name=form1 method=POST action=Practice30.jsp>");
	out.println("과목타입:"); 
	out.println("<select name=lectureType>");
		for(int i = 0; i < typeNames.length; i++)
			out.println("<option value=" + i + ">" + typeNames[i] + "</option>");
	out.println("</select>");
	out.println("과목명:"); 
	out.println("<select name=lectureTitle>");
	for(int i = 0; i < titleNames.length; i++)
		out.println("<option value=" + i + ">" + titleNames[i] + "</option>");
	out.println("</select>");
	out.println("요일:"); 
	out.println("<select name=day>");
	for(int i = 0; i < days.length; i++)
		out.println("<option value=" + i + ">" + days[i] + "</option>");
	out.println("</select>");
	out.println("시간:"); 
	out.println("<select name=time>");
	for(int i = 0; i < times.length; i++)
		out.println("<option value=" + i + ">" + times[i] + "</option>");
	out.println("</select>");
	out.println("연강여부:"); 
	out.println("<select name=consecutive>");
	for(int i = 0; i < consecutives.length; i++)
		out.println("<option value=" + i + ">" +  consecutives[i] + "</option>");
	out.println("</select>");
	out.println("<input type=submit value=등록>");
	out.println("</form>");
	out.println("<hr>");

	String lectureType = request.getParameter("lectureType");
	String lectureTitle = request.getParameter("lectureTitle");
	String day = request.getParameter("day");
	String time = request.getParameter("time");
	String consecutive = request.getParameter("consecutive");

	if(lectureType != null && lectureTitle != null && day != null && time != null && consecutive != null) {
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("timetable");
		if(list == null)
			list = new ArrayList<>();
		String info = typeNames[Integer.parseInt(lectureType)] + "/" + titleNames[Integer.parseInt(lectureTitle)] + "/" + days[Integer.parseInt(day)] + "/" + times[Integer.parseInt(time)] + "/" + consecutives[Integer.parseInt(consecutive)];
		list.add(info);	
		session.setAttribute("timetable", list);
		for(String s : list)
			out.println(s + "<br>");
	}
%>
</body>
</html>