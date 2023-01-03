<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr34.*" %>
<!DOCTYPE html>
<jsp:useBean id="calc" class="jspbook.pr34.Calculator" scope="page" />
<jsp:setProperty name="calc" property="*" />
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
		<input type="text" value="<%=request.getParameter("op1") %>" size="5" style="text-align:center;"><p>
		<%=request.getParameter("operator") %><p>
		<input type="text" value="<%=request.getParameter("op2") %>" size="5" style="text-align:center;"><p>
		=<p>
		<input type="text" value="<%= calc.calc() %>" size="5" style="text-align:center;" readonly><p>
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