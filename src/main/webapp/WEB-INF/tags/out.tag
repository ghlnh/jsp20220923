<%@ tag body-content="tagdependent" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 몸체 내용을 bodyText라는 EL변수에 저장 -->
<jsp:doBody var="bodyText" />
<%-- <c:out>태그를 이용하여 bodyText EL 변수 출력. 
escapeXml 속성값을 true로 지정하여 '<'와 '>' 문자가 HTML 태그가 아닌 해당 문자로 보이도록 설정 --%>
<c:out value="${bodyText}" escapeXml="true" />