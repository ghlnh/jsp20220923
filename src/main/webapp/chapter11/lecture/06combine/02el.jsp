<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
attribute 에 List<Car> 타입 객체 추가

--%>
<%
	List<Car> cars = new ArrayList<>();

	Car car1 = new Car();
	car1.setModel("avante");
	car1.setPrice(500);
	
	Car car2 = new Car();
	car2.setModel("santafe");
	car2.setPrice(300);
	
	cars.add(car1);
	cars.add(car2);
	
	request.setAttribute("cars", cars);
	
%>


	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>
</body>
</html>






