<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="count" required="true" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach begin="${1}" end="${count}"><!-- 전달받은 count 수만큼 몸체 내용을 반복해서 실행 -->
<jsp:doBody />
</c:forEach>