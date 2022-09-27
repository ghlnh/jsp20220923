<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>08 main</h1>

	<%-- map 객체 만들어서 request에 attribute 추가하기 --%>
	<%
		Map<String, String> map1 = Map.of("name", "이구름", "address", "우리집");

	%>
	
	<%
		request.setAttribute("myMap", map1);

	%>
	<div>
		<jsp:include page="08sub-attribute.jsp"></jsp:include>
	</div>
</body>
</html>






