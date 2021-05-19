package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserBean;
import model.UserDao;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("register") != null) {
			try {
				UserBean user = new UserBean();
				user.setNome(request.getParameter("nome"));
				user.setEmail(request.getParameter("email"));
				user.setTelefone(request.getParameter("telefone"));
				user.setSenha(request.getParameter("senha"));
				user.setTipo(1);

				UserDao.register(user);
				response.getWriter().append("foi");
				
			} catch (Exception e) {
				e.getMessage();
				// TODO: handle exception
			}
		}
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
