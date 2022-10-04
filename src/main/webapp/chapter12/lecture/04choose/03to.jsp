<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.genre =='comedy'}">
			<p>몬티파이튼의 성배</p>
		</c:when>
		<c:when test="${param.genre =='family'}">
			<p>코코</p>
		</c:when>
		<c:when test="${param.genre =='action'}">
			<p>존윅</p>
		</c:when>
		<c:otherwise>
			장르를 comedy, family, action 중에서 선택해주세요
		</c:otherwise>
	</c:choose>
	<a href="03from.jsp">돌아가기</a>
</body>
</html>