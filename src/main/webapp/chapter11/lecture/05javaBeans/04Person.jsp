<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="jsp20220923.chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	두개의 Person 객체를 attribute로 추가하고
	property(name, age, alive)을 el로 출력하는 코드 작성
	--%>
	<%
	Person p1 = new Person();
	p1.setName("이구름");
	p1.setAge(5);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("이곰이");
	p2.setAge(6);
	p2.setAlive(false);
	
	request.setAttribute("p1", p1);
	request.setAttribute("p2", p2);

	%>
	
	이름: ${p1.name } <br>
	나이: ${p1.age } <br>
	생존여부: ${p1.alive } <br>
	
	이름: ${p2.name } <br>
	나이: ${p2.age } <br>
	생존여부: ${p2.alive } <br>
	
</body>
</html>