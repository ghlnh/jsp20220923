<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("myName", "유재석");
	request.setAttribute("myName", "김종국");
	
	pageContext.setAttribute("your Name", "강호동");
	request.setAttribute("99name", "지석진");
	%>
	
${myName } <br>
${requestScope.myName } <br>
${pageScope["your Name"] } <br>
${requestScope["99name"] }	<br>
</body>
</html>













