<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse:collapse;
		width:470px;
		height:350px;
	}
	th {
		background-color:#ECECEC;
	}
	.imageAlign {
		vertical-align:middle;
		padding-left:5px;
	}
</style>
</head>
<body>
	<center>
		<img src="../Image/eclass_title.jpg">
		<table border='1px solid black'>
			<form name="frm1" method="POST" action="Practice22.jsp">
			<tr>
				<th colspan="2">회원 가입</th>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" size="15"><input type="image" class="imageAlign" src="../Image/check.gif"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="pw" size="15"></td>
			</tr>
			<tr>
				<th>성별</th><td><input type="radio" name="gender" value="0">남
				<input type="radio" name="gender" value="1" checked>여</td>
			</tr>
			<tr>
				<th>국적</th>
				<td><input type="text" value="대한민국" size="25" readonly>
				<input type="button" value ="국적변경" disabled></td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td>
				<select name="phone1">
					<option value=0>010</option>
					<option value=1>011</option>
					<option value=2>017</option>
					<option value=3>070</option>
				</select>
				- <input type="text" name="phone2" size="5" maxlength="4"> - <input type="text" name="phone3" size="5" maxlength="4">
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" size="45"></td>
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="date" name="birth"></td>
			</tr>
			<tr>
				<th>관심분야</th>
				<td><input type="checkbox" name ="hobby" value="0">뉴스
					<input type="checkbox" name ="hobby" value="1" checked>맛집
					<input type="checkbox" name ="hobby" value="2">책
					<input type="checkbox" name ="hobby" value="3">영화
					<input type="checkbox" name ="hobby" value="4">여행</td>
			</tr>
			<tr>
				<th>가입인사</th>
				<td><textarea name="memo" cols="56" rows="5">회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
			</tr>
			<tr>
				<th>증명사진</th>
				<td><input type="file"></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="가입하기">
				<input type="reset" value="다시작성"></th>
			</tr>
			</form>
		</table>
	</center>
</body>
</html>