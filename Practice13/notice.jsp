<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<style>
table {
	border:0px;
	width:550px;
	font-weight:bold;
}
td {
	border:0px;
	text-align:center;
}
.box1 {
	background-color:#FFDAB9;
	height:35px;
}
.box2 {
	background-color:#FFEFD5;
	height:300px;
}
</style>
</head>
<body>
	<div align="center">
		<img src="../Image/eclass_title.jpg">
		<table>
			<tr>
				<td class="box1">오류가 발생했습니다</td>
			</tr>
			<tr>
				<td class="box2">
					<img src="../Image/flower.gif">
					<br/>
					오류발생시간: <%= new java.util.Date() %>
					<br/>
					<br/>
					최대한 빨리 조치하겠습니다.
				</td>
			</tr>
		</table>
	</div>
</body>
</html>