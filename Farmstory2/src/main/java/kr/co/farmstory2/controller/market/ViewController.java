package kr.co.farmstory2.controller.market;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmstory2.dto.ProductDTO;
import kr.co.farmstory2.service.ProductService;

@WebServlet("/market/view.do")
public class ViewController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private ProductService service = ProductService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pNo = req.getParameter("pNo");
		logger.debug("pNo : " +pNo);
		
		ProductDTO product = service.selectProduct(pNo);
		logger.debug(product.toString());
		
		req.setAttribute("product", product);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/market/view.jsp");
		dispatcher.forward(req, resp);
	}


}
