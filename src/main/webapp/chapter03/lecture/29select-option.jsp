<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option 연습</h1>
	<form action="">
	통신사 :
	 <select name="tel" id="">
	 	<option value="SKT">SKT</option>
	 	<option value="LG">LG</option>
	 	<option value="KT">KT</option>
	 </select>
	 <hr>
	 음식들 :
	<select name="foods" id="" multiple="">
		<option value="kimchi">kimchi</option>
		<option value="cheese">cheese</option>
		<option value="pizza">pizza</option>
	</select>
	<input type="submit" value="전송">
	</form>
	<hr>
	
	<%
	String tel = request.getParameter("tel");
	String[] foods = request.getParameterValues("foods");
	
	if (tel == null) {
		tel = "";
	}
	
	if (foods == null) {
		foods = new String[]{};
	}
	
	%>
	<p>통신사는 <%=tel %>이고 <br>
	선택한 음식들은 <%= String.join(",", foods)  %>입니다.</p>
	
</body>
</html>













