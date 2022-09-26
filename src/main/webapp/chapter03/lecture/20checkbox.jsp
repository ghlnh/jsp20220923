<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 적절한 html 코드를 작성 --%>
<%-- name="name"인 요소는 text field로 만들기 --%>
<%-- name="heros"인 요소는 checkbox로 만들기 --%>
<form action=>
<input type="text" name="name">
<br>
<input type="checkbox" name="heros" value ="Captain america">Capatin america
<br>
<input type="checkbox" name="heros" value = "Ironman">Ironman
<br>
<input type="checkbox" name="heros" value ="Hulk">Hulk
<br>
<input type="checkbox" name="heros" value ="Thor">Thor
<br>
<input type="checkbox" name="heros" value = "Black Widow">Black Widow
<br>
<input type="checkbox" name="heros" value = "Antman">Antman
<br>
<input type="submit" value="전송">
</form>

<hr>
<%
String name = request.getParameter("name");
String[] heros = request.getParameterValues("heros");

if (heros != null) {
	out.print("<p>");
	out.print(name + "님이 좋아하는 영웅은 ");
	
	for (String hero : heros) {
		out.print(hero + " ");
	}
	
	out.print("입니다.");
	out.print("</p>");
}
%>

</body>
</html>










