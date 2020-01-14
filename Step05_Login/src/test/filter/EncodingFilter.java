package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
/*
 *  [ Filter 클래스 만드는 법 ] 
 *  
 *  1. Filter 인터페이스를  implements  한다.
 *  2. 어떤 요청에 대해서 Filter 가 동작하게 할지 
 *     @WebFilter(요청경로 페턴) 어노테이션을 지정한다.
 *  3. doFilter()  메소드에서 원하는 동작을 한다. 
 */

@WebFilter("/*")
public class EncodingFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	//필터가 동작 되면 호출되는 메소드 
	@Override
	public void doFilter(ServletRequest request, 
			ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//1. 인코딩이 설정되지 않았다면 
		if(request.getCharacterEncoding()==null) {
			//post 방식 요청 했을때 한글 인코딩 설정을 해준다.  
			request.setCharacterEncoding("utf-8");
		}
		
		//요청의 흐름 계속 이어가기 
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
