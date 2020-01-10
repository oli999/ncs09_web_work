package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//3. 
@WebServlet("/test1/game")
public class GameServlet extends HttpServlet{//1.
	//2.
	@Override
	protected void service(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		
		//컨텍스트 경로 읽어오기 
		String cPath=req.getContextPath();
		//원하는 경로로 리디일렉트 이동 시키기 
		resp.sendRedirect(cPath+"/test1/study.jsp");
	}

}




