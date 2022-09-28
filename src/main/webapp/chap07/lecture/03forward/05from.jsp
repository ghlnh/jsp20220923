<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:forward page="05to.jsp">
	 <jsp:param value="30" name="age"/>
	 <jsp:param value="1234@google.com" name="email"/>
</jsp:forward>