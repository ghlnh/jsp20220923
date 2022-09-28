<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 목록</title>
</head>
<body>
쿠키 목록 <br>
<%
	Cookie[] cookies = request.getCookies();
//쿠키를 사용할 때는 request.getCookies() 메서드가 리턴한 값이 null 여부를 확인해야 함
	if(cookies !=null && cookies.length >0) {
		for (int i=0; i< cookies.length; i++) {
%>
	<%=cookies[i].getName() %> =
	<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %> <br>
<%
		}
	}else{
%>
쿠키가 존재하지 않습니다.
<% } %>

</body>
</html>