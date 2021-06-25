package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PaymentDao;
import model.Payment;
import model.User;

/**
 * Servlet implementation class AddMoneyController
 */
@WebServlet("/AddMoneyController")
public class AddMoneyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMoneyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		int id=user.getId();
		Payment payment=new Payment(request.getParameter("paymentid"), "Amount credited in Ewallet", Double.parseDouble(request.getParameter("amount")), id);
		PaymentDao dao=new PaymentDao();
		int i=dao.create(payment);
		if(i>0) {
			user.setBalance(user.getBalance()+payment.getAmount());
		}
		else {
			response.getWriter().println("error in saving the payment to database");
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
