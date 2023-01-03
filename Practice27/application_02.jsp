<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("username") %>님 환영합니다.
<br>
<br>
세션 ID:<%=session.getId() %>
<br>
<%
session.setMaxInactiveInterval(Integer.parseInt(request.getParameter("time")));
%>
세션 지속시간:<%=session.getMaxInactiveInterval() %>
<br>
<br>
<%
	Integer count = (Integer)application.getAttribute("count");
	if(count==null)
		count = new Integer(0);
	int cnt=count.intValue()+1;
	application.setAttribute("count", cnt);
%>
오늘의 접속자 수: <%=count %>
</body>
</html>