<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<%
request.setAttribute("num1", 99);
request.setAttribute("num2", 77);
request.setAttribute("num3", 100);
request.setAttribute("num4", 77);
request.setAttribute("n5", 5);
request.setAttribute("n6", 6);
request.setAttribute("n7", 56);
request.setAttribute("n8", 8);
request.setAttribute("num9", 100);
request.setAttribute("num10", 8);
%>
<jsp:forward page="02to.jsp" />