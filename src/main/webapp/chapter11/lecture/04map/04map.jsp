<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--map 이라는 이름의 Map타입 attribute 추가--%>
	<%
	Map<String, String> map = new HashMap<>();
	map.put("abc", "chocolate");
	map.put("my key", "214");
	map.put("def", "default");
	map.put("2", "hongjinho");
	
	request.setAttribute("map", map);
	pageContext.setAttribute("def", "def");
	%>
	

	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def] }</p>
	<p>${map["2"] }</p>
</body>
</html>







