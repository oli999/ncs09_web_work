package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//3.
@WebServlet("/home/myhome")
public class MyHomeServlet extends HttpServlet{//1.
	
	//2.
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
		pw.println("<title>집에 가기 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>집이다~</p>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();		
	}
}










