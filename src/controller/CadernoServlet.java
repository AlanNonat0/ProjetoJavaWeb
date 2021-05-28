package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CadernoDao;

import model.UserBean;

/**
 * Servlet implementation class CadernoServlet
 */
@WebServlet("/CadernoServlet")
public class CadernoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadernoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao") != null && !request.getParameter("acao").isEmpty()? request.getParameter("acao") : "error";
		
		if(acao.equalsIgnoreCase("list")) {
			try {
				
				HttpSession session = request.getSession();		
				UserBean user=(UserBean) session.getAttribute("user");

						CadernoDao list = new CadernoDao();
						list.listarCaderno(user.getId());
						
					response.sendRedirect(request.getContextPath()+"/usuario/caderno.jsp");
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
