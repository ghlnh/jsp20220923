<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.util.Date" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>removeHtml</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<c:set var="dateEL" value="<%= new Date() %>" />
<tf:removeHtml trim="true">
  <font size="10"> 현재 <style>시간</style>은 ${dateEL} 입니다. </font>
</tf:removeHtml>
<br>

<!--length 속성의 값을 java.lang.Integer 타입이 아닌 문자열로 지정하고 있는데 
이 경우 웹 컨테이너가 자동으로 문자열 값을 java.lang.Integer 타입으로 변환해서 속성값을 전달한다. -->

<tf:removeHtml length="15" trail="..." trim="true">
  <u>현재 시간</u>은 <b>${dateEL}</b> 입니다.
</tf:removeHtml>
<br>

<tf:removeHtml length="15">
  <jsp:body><u>현재 시간</u>은 <b>${dateEL}</b> 입니다.</jsp:body>
</tf:removeHtml>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>