<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pro01.*"%>
    
<jsp:useBean id="am" class="jspbook.pro01.AddrManager" scope="application" />
<!DOCTYPE html>
<%
	int rpp = 3;
	int currentPage;
	String sindex = request.getParameter("sindex");
	if(sindex == null)
		currentPage = 1;
	else
		currentPage = Integer.parseInt(sindex);
%>
<html>
<head>
<meta charset="UTF-8">
<title>add_list</title>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>
<table border="1" style="width:570px; text-align:center;">
<tr>
<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td>
</tr>
<% 
	int startIndex = (currentPage - 1) * rpp + 1;
	int lastIndex = currentPage * rpp;
	for(int i = startIndex; i <= am.getAddrList().size(); i++) {
		if(i <= lastIndex) {
			AddrBean ab = am.getAddrList().get(i - 1);
%>
			<tr>
			<td><%=ab.getUsername() %></td>
			<td><%=ab.getTel() %></td>
			<td><%=ab.getEmail() %></td>
			<td><%=ab.getGender() %></td>
			<td><%=ab.getGroup() %></td>
			</tr>
<%
		}
	}
%>
</table>
<p>
<%
	int allpage = am.getAddrList().size() / rpp;
	if(am.getAddrList().size() % rpp != 0)
		allpage++;
	for(int i = 1; i <= allpage; i++) {
		if(i == currentPage)
			out.println(i + "|");
		else
			out.println("<a href=addr_list.jsp?sindex=" + i + ">" + i  + "|</a>");
	}
%>
</div>
</body>
</html>