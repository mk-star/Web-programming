<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr41.*"%>
<jsp:useBean id="calc" class="jspbook.pr41.Calculator" />
<jsp:setProperty name="calc" property="*" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc_result</title>
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
		<td>
		<input type="text" value="${param.op1}" size="5" style="text-align:center;" readonly><p>
		${param.operator}
		<p>
		<input type="text" value="${param.op2}" size="5" style="text-align:center;" readonly><p>
		=<p>
		<input type="text" value="${calc.calc()}" size="5" style="text-align:center;" readonly><p>
		</td>
		</tr>
	</tbody>
	<tfoot>
		<tr><td colspan="2"></td></tr>
	</tfoot>
</table>
</div>
</body>
</html>