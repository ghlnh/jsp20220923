<%@ tag body-content="empty" pageEncoding="utf-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<!-- 동적 속성을 저장할 EL 변수 이름을 optionMap으로 설정 -->
<%@ tag dynamic-attributes="optionMap" %>
<%@ attribute name="name" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<select name="${name}">
<!--optionMap에 저장된 속성의 이름(key)과 값(value)을 사용 -->
    <c:forEach items="${optionMap}" var="option">
    <option value="${option.key}">${option.value}</option>
    </c:forEach>
</select>