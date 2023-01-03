<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	thead, tfoot {
		background-color:#35CAFE;
		height:50px;
		font-weight:bold;
		text-align:center;
		font-size:40px;
	}
	td{
		text-align:center;
		width:180px;
	}
	table {
		width:400px;
	}
</style>
</head>
<body>
<div align="center">
<table>
	<thead>
	<tr><td colspan="2">CalCulaTor</td></tr>
	</thead>
	<tbody>
	<tr>
	<td><img src="../Image/cal.jpg"></td>
	<form name="form1" method="POST" action="calc_result.jsp">
		<td>
		<input type="text" name="op1" value="0" size="5" style="text-align:center;"><p>
		<select name="operator">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
		</select><p>
		<input type="text" name="op2" value="0" size="5" style="text-align:center;"><p>
		<input type="submit" value="="><p>
		<input type="text" size="5" disabled><p>
		</td>
	</tbody>
	</form>
	</tr>
	<tfoot>
	<tr><td colspan="2"></td></tr>
	</tfoot>
</table>
</div>
</body>
</html>