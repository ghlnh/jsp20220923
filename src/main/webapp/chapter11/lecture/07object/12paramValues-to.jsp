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
	이름: ${param.n } <br>
	영웅: ${paramValues.heros[0] } <br>
	영웅: ${paramValues.heros[1] } <br>
	영웅: ${paramValues.heros[2] } <br>
	영웅: ${paramValues.heros[3] } <br>
	영웅: ${paramValues.heros[4] } <br>
</body>
</html>