<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% List<String> l1 = (List<String>)request.getAttribute("list1"); 
	Map<String, String> map =(Map<String, String>)request.getAttribute("map1");
%>


list :
<% for (String list :l1) {
%>		
		<%=list %>
<%
		}
%>
<br>
map:
<%=map.get("jisu") %>
<br>
<%=map.get("v") %>

