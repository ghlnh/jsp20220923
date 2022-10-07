package chap19;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class XSLTResponseWrapper extends HttpServletResponseWrapper{
	private ResponseBufferWriter buffer = null;
	
	public XSLTResponseWrapper(HttpServletResponse response) {
		super(response);
		buffer = new ResponseBufferWriter();
	}
	//JSP/서블릿은 ServletResponse의 getWriter()메서드로 구한 출력 스트림에 데이터를 출력
	//XSLTResponseWrapper는 getWriter()메서드에서 ResponseBufferWriter객체를 리턴하여 JSP출력결과를 버퍼에 저장
	@Override
	public PrintWriter getWriter() throws IOException {
		return buffer;
	}
	@Override
	public void setContentType(String contentType) {
		// do nothing
		//JSP/서블릿에서 설정한 콘텐트 타입을 무시하고 필터에서 새롭게 콘텐트 타입을 지정하기 위해서
	}
	//버퍼에 저장된 내용을 구함. 즉, JSP나 서블릿이 생성한 내용을 리턴
	public String getBufferedString() {
		return buffer.toString();
	}
	
}
