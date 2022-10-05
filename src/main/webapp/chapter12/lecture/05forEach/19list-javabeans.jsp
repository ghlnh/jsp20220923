<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<%-- Car 타입의 아이템을 갖는 List를 attribute에 넣고 --%>
	<%
	Car car1 = new Car();
	car1.setModel("avante");
	car1.setPrice(5000);
	
	Car car2 = new Car();
	car2.setModel("telsa");
	car2.setPrice(8000);
	
	Car car3 = new Car();
	car3.setModel("tivoli");
	car3.setPrice(4000);
	
	pageContext.setAttribute("Cars",
			List.of(car1, car2, car3));
	%>

	
	<%-- forEach로 탐색 --%>
	
	<c:forEach items="${Cars }" var="car">
		<p>${car.model } : ${car.price }</p>
	</c:forEach>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>







