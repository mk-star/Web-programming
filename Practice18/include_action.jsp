<%-- 컴퓨터학과 20210753 김민경 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_action</title>
</head>
<body>
<div align="center">
	<h1>Include Action Practice</h1>
	<hr/>
	<table border="0" cellpadding="15" cellspacing="1">
		<tr>
			<td>
				<jsp:include page="calendar.jsp" />
			</td>
			<td>
				<jsp:include page="news.jsp" />
			</td>
		</tr>
	</table>
</div>
</body>
</html>