package example;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet 어노테이션은 urlPatterns 속성을 가짐 
//urlPatterns은 해당 서블릿과 매핑될 URL패턴을 지정할 때 사용
// /hello로 들어오는 URL을 HelloServlet이 처리하도록 설정
@WebServlet(urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>인사</title></head>");
        out.println("<body>");
        out.println("안녕하세요, ");
        out.println(request.getParameter("name"));
        out.println("님");
        out.println("</body></html>");
    }
}