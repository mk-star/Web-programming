<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>
<div align="center">
<h1>주소록</h1>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String addr = name + ", " + tel;
		
		if(name != null && tel != null) {
			ArrayList<String> list = (ArrayList<String>)application.getAttribute("addrbook");
			if(list == null)
				list = new ArrayList<String>();
			list.add(addr);
			application.setAttribute("addrbook", list);
			int i = 1;
			
			for(String s:list) {
				out.println(i + ". " + s + "<br>");
				i++;
			}
		}
	%>
</div>
</body>
</html>