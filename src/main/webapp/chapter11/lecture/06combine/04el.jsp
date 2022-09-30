<%@page import="java.util.*"%>
<%@ page import="jsp20220923.chap07.*" %>
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
	<%--
	두개의 entry를 가진 
	Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티 el로 출력하는 코드 작성
	
	 --%>

<%
	Map<String, Person> map = new HashMap<>();
	Person p1 = new Person();
	p1.setName("이나현");
	p1.setAge(30);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("이예은");
	p2.setAge(28);
	p2.setAlive(true);
	
	map.put("p1", p1);
	map.put("p2", p2);

	request.setAttribute("sister", map);
%>

${sister.p1.name } <br>
${sister.p1.age } <br>
${sister.p1.alive } <br>

${sister.p2.name } <br>
${sister.p2.age } <br>
${sister.p2.alive } <br>


</body>
</html>




