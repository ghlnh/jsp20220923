<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.util.Calendar" %>
<%
   Calendar cal=Calendar.getInstance();
   request.setAttribute("time",cal);
%>
<jsp:forward page="viewTime.jsp"/>