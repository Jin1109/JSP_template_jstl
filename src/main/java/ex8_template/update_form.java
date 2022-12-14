package ex8_template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//http://localhost:8088/JSP//update_form
@WebServlet("/update_form")
public class update_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		if (id != null && !id.equals("")) {
			DAO dao = new DAO();
			Template_join temp = dao.selectInfo(id);
			RequestDispatcher dispatcher = 
						request.getRequestDispatcher("/ex8_db/_4.join/update_form.jsp");
			request.setAttribute("temp", temp);
			dispatcher.forward(request, response);
		}else {
			session.invalidate();
			response.sendRedirect("login"); //세션의 속성 "id"가 존재하지 않으면 다시 로그인 하도록 합니다.
		}
	}

}
