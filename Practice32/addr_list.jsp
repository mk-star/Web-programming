<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application" />

<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>
<table border="1" width="500px" style="text-align:center;">
	<tr>
	<td>이름</td>
	<td>전화번호</td>
	<td>이메일</td>
	<td>성별</td>
	<td>그룹</td>
	</tr>
	<%
	for(AddrBean ab : am.getAddrList()) {
		pageContext.setAttribute("addr", ab);
	%> 
		<jsp:useBean id="addr" class="jspbook.ch07.AddrBean" />
		<tr>
		<td><jsp:getProperty name="addr" property="username" /></td>
		<td><jsp:getProperty name="addr" property="tel" /></td>
		<td><jsp:getProperty name="addr" property="email" /></td>
		<td><jsp:getProperty name="addr" property="gender" /></td>
		<td><jsp:getProperty name="addr" property="group" /></td>
		</tr>
	<%
	}
	%>
</table>
</div>
</body>
</html>
<!-- 속성을 setAttribute로 저장. useBean 이용해서 꺼내옴. getAttribute 사용 -->