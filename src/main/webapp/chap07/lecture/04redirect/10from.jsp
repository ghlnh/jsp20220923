<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="java.util.*" %>
// session attribute 추가하기

<%List<String> list = List.of("이곰이", "이솜이", "이구름");

session.setAttribute("names", list);

response.sendRedirect("10to.jsp");
%>