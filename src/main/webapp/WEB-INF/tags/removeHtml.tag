<%@ tag body-content="scriptless" pageEncoding="utf-8" %>
<%@ attribute name="length" type="java.lang.Integer" %>
<%@ attribute name="trail" %>
<%@ attribute name="trim" %>

<!-- 몸체 내용을 jspContext 기본 객체의 content 속성에 저장 -->
<jsp:doBody var="content" scope="page" />
<%
    //jspContext 기본 객체의 content 속성값을 읽음
    String content = (String)jspContext.getAttribute("content");
    if (trim != null && trim.equals("true")) {
        content = content.trim();
    }
    //정규표현식을 사용해서 content에서 태그를 삭제
    content = content.replaceAll(
        "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?>", "");
   
    if (length != null && length.intValue() > 0 &&
        content.length() > length.intValue()) {
        content = content.substring(0, length.intValue());
        if (trail != null) {
            content = content + trail;
        }
    }
%>
<%= content %>
