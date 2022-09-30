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

<form action="13paramValues-to.jsp">
	주문일자:<input type="date" name="date">
	사료<input type="checkbox" name="prod" value="food">
	간식<input type="checkbox" name="prod" value="snack">
	영양제<input type="checkbox" name="prod" value="supplement">
	장난감<input type="checkbox" name="prod" value="toy">
	기타<input type="checkbox" name="prod" value="etc">
<input type="submit" value="제출">
</form>

</body>
</html>