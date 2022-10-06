package chap19;
import java.io.IOException;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

public class NullParameterFilter implements Filter {
	private String[] parameterNames = null;
	
	@Override
	//"parameterNames"초기화 파라미터의 값을 읽어와 기본값을 저장할 파라미터 목록을 parameterNames필드에 저장
	//파라미터 목록은 콤마, 로 구분
	public void init(FilterConfig filterConfig) throws ServletException {
		String names = filterConfig.getInitParameter("parameterNames");
		StringTokenizer st = new StringTokenizer(names, ",");
		parameterNames = new String[st.countTokens()];
		
		for (int i = 0; st.hasMoreTokens(); i++) {
			parameterNames[i] = st.nextToken();
		}
	}
	//필터 작업을 수행. NullParameterRequestWrapper 생성한 뒤, 
	//기본값으로 빈 문자열을 사용 할 파라미터 목록을 요청 래퍼 객체 전달
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		NullParameterRequestWrapper requestWrapper = new NullParameterRequestWrapper((HttpServletRequest) request);
		requestWrapper.checkNull(parameterNames);
		
		chain.doFilter(requestWrapper, response);
	}
	
	@Override
	public void destroy() {
	}
}
