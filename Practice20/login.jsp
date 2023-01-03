<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	.person {
		padding-left:80px;
	}
	.id {
		font-weight:bold;
		padding-right:40px;
	}
	.pwd {
		font-weight:bold;
		padding-right:25px;
	}
	.txtbox {
	boder:1px soild red;
	background-color:#FFFF99;
	}
</style>
</head>
<body>
<div align="center">
		<img src="../Image/eclass_title.jpg">
		<h2>로그인</h2>
		<hr/>
		<table border="0">
			<tr>
				<td><img src="../Image/eclass_logo.png"></td>
				<td>
				<b>회원님의 아이디와 비밀번호를 정확히 입력하세요.</b>
				<br/>
				<br/>
				<form name="frm1" method="POST" action="result.jsp">
					<div class="person">
					<select name="type">
						<option value="학부생" selected>학부생</option>
						<option value="대학원생">대학원생</option>
						<option value="교직원생">교직원생</option>
					</select>
					</div>
					<br/>
					<span class="id">아이디</span><input type="text" name="strID" class="txtbox">
					<br/>
					<br/>
					<span class="pwd">비밀번호</span><input type="password" name="strPwd" class="txtbox">
					<br/>
					<br/>
					<input type="submit" value="로그인">
					<input type="button" value="가입하기">
				</form>
				</td>
			</tr>
		</table>
</div>
</body>
</html>