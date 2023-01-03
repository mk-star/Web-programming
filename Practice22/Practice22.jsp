<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<%!
	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"};

	ArrayList<String> getParameterNames(HttpServletRequest request) {
		ArrayList<String> list = new ArrayList();
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()) {
			String s=e.nextElement();		
			list.add(s);
		}
		return list;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice22</title>
</head>
<body>
<%
	Enumeration<String> e = request.getParameterNames();
	while(e.hasMoreElements()) {
		String s = e.nextElement();
		out.println(s + ": ");
		if(s.equals(mChoices[0])) {
			String[] values = request.getParameterValues(s);
			for(int i = 0; i < values.length; i++)
				out.println(values[i] + "/");
		}
		else
			out.println(request.getParameter(s));
		out.println("<br>");
	}
	out.println("<hr>");
	out.println("<h1>Processing Parameters</h1>");
	e = request.getParameterNames();
	while(e.hasMoreElements()) {
		String s=e.nextElement();
		out.println(s + ": ");
		if(s.equals("gender"))
			out.println(gNames[Integer.parseInt(request.getParameter(s))]);
		else if(s.equals("phone1"))
			out.println(telCompany[Integer.parseInt(request.getParameter(s))]);
		else if(s.equals(mChoices[0])) {
			String[] values = request.getParameterValues(s);
			for(int i = 0; i < values.length; i++)
				out.println(hobbyNames[Integer.parseInt(values[i])] + "/");
		}
		else
			out.println(request.getParameter(s));
		out.println("<br>");
	}
%>
</body>
</html>