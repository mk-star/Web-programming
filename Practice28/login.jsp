<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%

	String user = (String)session.getAttribute("user");
	if(user == null) {
		out.println("<form name=form1 method=POST action=checker.jsp>");
		out.println("아이디: <input type=text name=username>");
		out.println("<br><br>");
		out.println("패스워드: <input type=password name=password>");
		out.println("<br><br>");
		out.println("<input type=hidden name=action value=login>");
		out.println("<input type=submit value=로그인>");
		out.println("</form>");

	}
	else {
		out.println("<form name=form2 method=POST action=checker.jsp>");
		out.println(user + "님 환영합니다.");
		out.println("<br><br>");
		out.println("<input type=hidden name=action value=logout>");
		out.println("<input type=submit value=로그아웃>");
		out.println("</form>");
	}
%>
<body>
</body>
</html>