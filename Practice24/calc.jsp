<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc</title>
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
<body>
<table>
	<tr>
	<td colspan="2" class="title">CalCuLaTor</td>
	</tr>
	<tr>
	<td><img src="../Image/cal.jpg"></td>
	<form name="form1" method="POST" action="calc_result.jsp">
		<td class="t1">
		<input type="text" name="num1" value="0" size="5" style="text-align:center;">
		<br>
		<br>
		<select name="op">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
		</select>
		<br>
		<br>
		<input type="text" name="num2" value="0" size="5" style="text-align:center;">
		<br>
		<br>
		<input type="submit" value="=">
		<br>
		<br>
		<input type="text" size="5" disabled>
		</td>
	</form>
	</tr>
	<tr>
	<td colspan="2" class="title"></td>
	</tr>
</table>
</body>
</html>