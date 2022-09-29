<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.net.URLEncoder" %>

<%
	Cookie cookie1 = new Cookie("Paht1",
			URLEncoder.encode("경로:/chapter09/path1", "utf-8"));
	cookie1.setPath("/chapter09/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("Paht2",
			URLEncoder.encode("경로:", "utf-8"));
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("Paht3",
			URLEncoder.encode("경로:/", "utf-8"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("Paht4",
			URLEncoder.encode("경로:/chapter09/path2", "utf-8"));
	cookie3.setPath("/chapter09/path2");
	response.addCookie(cookie4);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 경로 지정</title>
</head>
<body>
다음과 같이 쿠키를 생성했습니다. <br>
<%= cookie1.getName() %> = <%= cookie1.getValue() %>
[<%= cookie1.getPath() %>]
<br>
<%= cookie2.getName() %> = <%= cookie2.getValue() %>
[<%= cookie2.getPath() %>]
<br>
<%= cookie3.getName() %> = <%= cookie3.getValue() %>
[<%= cookie3.getPath() %>]
<br>
<%= cookie4.getName() %> = <%= cookie4.getValue() %>
[<%= cookie4.getPath() %>]
<br>
</body>
</html>