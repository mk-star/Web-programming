<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc_result</title>
<%!
	int num1 = 0;
	int num2 = 0;
	String op = "+";
%>
<style>
table {
	width:350px;
	text-align:center;
}
.title {
	background-color:#32CCFE;
	height:40px;
	font-size:40px;
}
.t1 {
	padding:30px;
	text-align:center;
}
</style>
</head>
<%
	int num1=Integer.parseInt(request.getParameter("num1"));
	int num2=Integer.parseInt(request.getParameter("num2"));
	int result=0;
	String op=request.getParameter("op");
	
	if(op.equals("+"))
		result = num1 + num2;
	else if(op.equals("-"))
		result = num1 - num2;
	else if(op.equals("*"))
		result = num1 * num2;
	else if(op.equals("/"))
		result = num1 / num2;
%>
<body>
<table style="text-align:center;">
	<tr>
	<td colspan="2" class="title">CalCuLaTor</td>
	</tr>
	<tr>
	<td><img src="../Image/cal.jpg"></td>
	<td class="t1">
	<input type="text" value="<%=num1 %>" size="5" style="text-align:center;" readonly>
	<br>
	<br>
	<%=op %>
	<br>
	<br>
	<input type="text"  value="<%=num2 %>" size="5" style="text-align:center;" readonly>
	<br>
	<br>
	=
	<br>
	<br>
	<input type="text" value="<%=result %>"size="5" style="text-align:center;">
	</td>
	</tr>
	<tr>
	<td colspan="2" class="title"></td>
	</tr>
</table>
</body>
</html>