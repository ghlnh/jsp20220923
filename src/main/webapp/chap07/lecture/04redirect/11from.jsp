<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.*" %>
<%--
attribute 넣고
11to.jsp로 redirect 해서

11to.jsp에서 오류없이 null이 아닌 값 출력
--%>
<%
Map<String, String> m = Map.of("song1","stay","song2","overdose");

session.setAttribute("songs", m);

response.sendRedirect("11to.jsp");
%>