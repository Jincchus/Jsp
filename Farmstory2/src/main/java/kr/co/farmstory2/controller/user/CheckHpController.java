package kr.co.farmstory2.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.JsonObject;

import kr.co.farmstory2.service.UserService;


@WebServlet("/user/checkHp.do")
public class CheckHpController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private UserService service = UserService.getInstanced();
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String hp = req.getParameter("hp");
		int result = service.selectCountHp(hp);
		
		logger.info("result : " + result);
		
		// JSON 생성
		JsonObject json = new JsonObject();
		json.addProperty("result", result);

		// JSON 출력
		PrintWriter writer = resp.getWriter();
		writer.print(json.toString());
		
	}
}
