<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form>(input[name="scores"]+br)*3+input:s -->
	<form action="">
		<input type="text" name="scores" value="100">
		<br>
		<input type="text" name="scores" value="90">
		<br>
		<input type="text" name="scores" value="80">
		<br>
		<input type="submit" value="평균구하기">
	</form>
	
	<hr>
	<%-- scores의 값 더해서 3으로 나눈 평균 출력하기 --%>
	
	<%
	String[] scores = request.getParameterValues("scores");
	
	if (scores != null) {
		Integer sum = 0;
		for (String score : scores) {
			sum += Integer.valueOf(score);
			
			out.print("<p>");
			out.print("점수 : " + score);
			out.print("</p>");
		}
		
		double avg = sum / 3.0;
	%>
		<p>평균 : <%= avg %>입니다.</p>
	<%
	}
	%>
	
</body>
</html>











