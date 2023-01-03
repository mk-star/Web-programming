<!-- 20210753 김민경 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
<style>
	table{
		border-collapse:collapse;
		width:470px;
		height:350px;
	}
	thead, .left_column, tfoot {
		background-color:#ECECEC;
		text-align:center;
	}
	.imageAlign {
		vertical-align:middle;
		padding-left:5px;
	}
	.left_column {
		font-weight:bold;
	}
</style>
</head>
<body>
<div align="center">
	<img src="../Image/eclass_title.jpg">
	<table border="1">
	<form name="form1" method="POST" action="Practice38.jsp">
	<thead>
	<tr>
		<th colspan="2">회원 가입</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td class="left_column">아이디</td>
		<td><input type="text" name="id" size="15"><input type="image" class="imageAlign" src="../Image/check.gif"></td>
	</tr>
	<tr>
		<td class="left_column">패스워드</td>
		<td><input type="text" name="pw" size="15"></td>
	</tr>
	<tr>
		<td class="left_column">성별</td>
		<td><input type="radio" name="gender" value="0">남
		<input type="radio" name="gender" value="1" checked>여</td>
	</tr>
	<tr>
		<td class="left_column">국적</td>
		<td><input type="text" value="대한민국" size="25" readonly>
		<input type="button" value ="국적변경" disabled></td>
	</tr>
	<tr>
		<td class="left_column">휴대폰</td>
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
		<td class="left_column">이메일</td>
		<td><input type="text" name="email" size="45"></td>
	</tr>
	<tr>
		<td class="left_column">생일</td>
		<td><input type="date" name="birth"></td>
	</tr>
	<tr>
		<td class="left_column">관심분야</td>
		<td><input type="checkbox" name ="hobby" value="0">뉴스
			<input type="checkbox" name ="hobby" value="1" checked>맛집
			<input type="checkbox" name ="hobby" value="2">책
			<input type="checkbox" name ="hobby" value="3">영화
			<input type="checkbox" name ="hobby" value="4">여행</td>
	</tr>
	<tr>
		<td class="left_column">가입인사</td>
		<td><textarea name="memo" cols="56" rows="5">회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
	</tr>
	<tr>
		<td class="left_column">증명사진</td>
		<td><input type="file"></td>
	</tr>
	</tbody>
	<tfoot>
	<tr>
		<td colspan="2"><input type="submit" value="가입하기">
		<input type="reset" value="다시작성"></td>
	</tr>
	</tfoot>
	</form>
	</table>
</div>
</body>
</html>