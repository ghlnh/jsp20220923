package chap19;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

@WebFilter(filterName = "xsltFilter", urlPatterns = {"/xml/*"})
public class XSLTFilter implements Filter{
	private String xslPath = null;
	
	//XSL/T변환할 때 사용할 XSL파일의 경로를 구함 ("/WEB-INF/book.xsl")
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		xslPath = filterConfig.getServletContext().getRealPath("/WEB-INF/book.xsl");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//필터가 생성할 출력의 콘텐트 타입을 "text/html; charset=utf-8"로 지정.
		//따라서 웹브라우저에 출력되는 문서는 HTML이 됨
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		//필터 체인을 통해 전달할 응답래퍼 객체 생성
		XSLTResponseWrapper responseWrapper = 
							new XSLTResponseWrapper((HttpServletResponse) response);
		//체인을 실행
		//체인을 통해 응답래퍼 객체가 전달되느로 JSP나 서블릿이 출력하는 내용은
		//응답 래퍼 객체의 버퍼(XSLTResponseWrapper 클래스의 buffer필드)에 저장
		chain.doFilter(request, responseWrapper);
		
		//XSL/T 변환
		try {
			TransformerFactory factory = TransformerFactory.newInstance();
			Reader xslReader = new BufferedReader(new FileReader(xslPath));
			
			StreamSource xslSource = new StreamSource(xslReader);
			
			Transformer transformer = factory.newTransformer(xslSource);
			
			//응답래퍼로부터 JSP/서블릿이 생성한 내용을 읽어옴 (XML 문서 원본으로 사용)
			String xmlDocument = responseWrapper.getBufferedString();
			Reader xmlReader = new StringReader(xmlDocument);
			StreamSource xmlSource = new StreamSource(xmlReader);
			
			StringWriter buffer = new StringWriter(8080);
			//XSL/T 변환 실행
			transformer.transform(xmlSource, new StreamResult(buffer));
			//변환 결과 출력
			writer.print(buffer.toString());
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
		
		writer.flush();
		writer.close();
		
	}
	
	@Override
	public void destroy() {
	}
}
