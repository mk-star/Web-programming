<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
세션이 생성된 후 <%=((session.getLastAccessedTime()-session.getCreationTime())/1000) % 60%>초가 지났습니다.
</body>
</html>