package chap19;
import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class LoginCheckFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession(false);
		
		boolean login = false;
		if (session != null) {
			if (session.getAttribute("MEMBER")!=null) {
				login = true;
			}
		}
		if (login) {
			chain.doFilter(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/chapter19/loginForm.jsp");
			dispatcher.forward(request, response);
		}
	}
	@Override
	public void destroy() {
	}
	
}
