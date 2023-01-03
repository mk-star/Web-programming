<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 04</title>
</head>
<body>
<form name="frm1" method="POST" action="page_control_02.jsp">
아이디: <input type="text" name="username"> 비밀번호: <input type="text" name="passwd"> <input type="submit" value="forward 전송">
</form>
<form name="frm2" method="POST" action="page_control_03.jsp">
아이디: <input type="text"> 비밀번호: <input type="text"> <input type="submit" value="sendRedirect 전송">
</form>
</table>
</body>
</html>