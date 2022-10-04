package example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NowServlet extends HttpServlet{
	//처리하고자 하는 HTTP방식(method=GET)방식에 따라 알맞은 메서드를 재정의 해서 구현
	@Override
	//JSP의 기본 객체 request, response 에 해당
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	//response.setContentType 를 이용해서 응답의 컨텐츠 지정해서 전송 
	//(JSP에서 page 디렉티브의 contentType 속성값과 동일)
	response.setContentType("text/html; charset=utf-8");
	//실제 응답결과 데이터를 웹브라우저에 전송하기 위해 
	//response.getWriter()로 문자열 데이터를 출력할 수 있는 PrintWriter의 println()메서드 이용
	PrintWriter out = response.getWriter();
	out.println("<html>");
	out.println("<head><title>현재시간</title></head>");
	out.println("<body>");
	out.println("현재 시간은");
	out.println(new Date());
	out.println("입니다.");
	out.println("</body></html>");

	}
}
