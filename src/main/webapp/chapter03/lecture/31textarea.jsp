<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자기소개 쓰기</h1>
	<%-- form,input,textarea --%>
	<form action="">
	<input type="text" name="name">
	<br>
	<textarea name="desc" id="" cols="30" rows="10"></textarea>
	<br>
	<input type="submit" value="전송">
	</form>
	
	<hr>
	<%
	String name = request.getParameter("name");
	String desc = request.getParameter("desc");
	%>
	<p><%= name %>님의 자기소개</p>
	<p style="white-space: pre-wrap;"><%= desc %></p>
	
</body>
</html>










