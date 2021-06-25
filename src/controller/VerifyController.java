package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.Register;

/**
 * Servlet implementation class VerifyController
 */
@WebServlet("/VerifyController")
public class VerifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		String code=(String)session.getAttribute("code");
		
		String icode=request.getParameter("code");
		if(code.equals(icode)) {
			Register rg=(Register)session.getAttribute("register");
			UserDao dao=new UserDao();
			int i=dao.create(rg);
			session.removeAttribute("register");
			if(i>0) {
				response.sendRedirect("login.jsp");
			}
			else {
				response.sendRedirect("index.jsp");
			}
		}
		else {
			response.sendRedirect("index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
