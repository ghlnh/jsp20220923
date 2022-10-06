package chap19;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class NullParameterRequestWrapper extends HttpServletRequestWrapper{
	private Map<String, String[]> parameterMap = null;
	
	//생성자는 전달받은 request의 파라미터 정보를 parameterMap에 저장
	public NullParameterRequestWrapper(HttpServletRequest request) {
		super(request);
		parameterMap= new HashMap<String, String[]>(request.getParameterMap());
	}
	//검사할 파라미터의 이름 목록을 인자로 전달 받고 인자로 전달 받은 각각의 이름을 검사해서
	//해당 이름의 파라미터가 존재하지 않으면 빈 문자열을 저장
	public void checkNull(String[] parameterNames) {
		for (int i = 0; i < parameterNames.length; i++) {
			if(!parameterMap.containsKey(parameterNames[i])) {
				String[] values = new String[] {""};
				parameterMap.put(parameterNames[i], values);
			}
		}
	}
	//파라미터와 관련된 메서드를 구현(오버라이딩)해서 parameterMap에서 파라미터 값을 읽어오도록 함
	@Override
	//name 파라미터의 값 (없으면 null)?
	public String getParameter(String name) {
		String[] values = getParameterValues(name);
		if(values !=null && values.length >0) 
			return values[0];
		return null;
		}
	@Override
	//parameterMap 리턴
	public Map<String, String[]> getParameterMap() {
		return parameterMap;
		}
		
	@Override
	//parameterMap의 이름(key)목록
	public Enumeration<String> getParameterNames() {
		return Collections.enumeration(parameterMap.keySet());
		}
	@Override
	//parameterMap의 name(key)의 값(value)
	public String[] getParameterValues(String name) {
		return (String[])parameterMap.get(name);
	}
	
}
