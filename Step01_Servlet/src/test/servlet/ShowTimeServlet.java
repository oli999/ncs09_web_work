package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 *  /showtime  요청에 대해서 응답할 서블릿 정의하기
 *  
 *  1. HttpServlet 클래스를 상속 받는다.
 *  2. service() 메소드를 오버라이딩 한다.
 *  3. @WebSerlvet("/showtime") 요청 경로를 어노테이션으로 등록한다. 
 */
@WebServlet("/showtime")
public class ShowTimeServlet extends HttpServlet{
	/*
	 *  service() 메소드에는 HttpServletRequest 객체의 참조값과
	 *  HttpServletResponse  객체의 참조값이 전달된다.
	 *  HttpServletRequest 객체는 요청한 클라이언트의 정보를 확인할수 있는기능
	 *  이 들어 있고 
	 *  HttpServletResponse 객체에는 응답에 필요한 기능들이 들어 있다. 
	 */
	@Override
	protected void service(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		//응답 한글 인코딩 설정 
		resp.setCharacterEncoding("utf-8");
		//응답 content type 설정 (html 페이지를 응답 하겠다고 알리기)
		resp.setContentType("text/html;charset=utf-8");
		
		//요청한 클라이언트에게 문자열을 출력할수 있는 객체
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>현재 시간 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		//날짜 객체를 생성한다. 
		Date d=new Date();
		//현재 날짜 시간 정보를 문자열로 간단히 얻어내기
		String info=d.toString();
		pw.println("<p>현재 시간 : <strong>"+info+"</strong></p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}









