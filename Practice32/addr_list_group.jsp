<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application" />

<html>
<head>
<meta charset="UTF-8">
<title>addr_list_group</title>
<%
	List<AddrBean> addrlist = am.getAddrList();
	request.setAttribute("addr1", addrlist);
%>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*" />
</head>
<body>
<div align="center">
<h2>주소록(그룹별 보기)</h2>
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
	for(AddrBean ab : am.getAddrList())
		if(ab.getGroup().equals("가족")) {
	%>
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
		<% 
	for(AddrBean ab : am.getAddrList())
		if(ab.getGroup().equals("친구")) {
	%>
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
		<% 
	for(AddrBean ab : am.getAddrList())
		if(ab.getGroup().equals("직장")) {
	%>
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