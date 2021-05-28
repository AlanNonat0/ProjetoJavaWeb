package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String acao = request.getParameter("acao") != null && !request.getParameter("acao").isEmpty()? request.getParameter("acao") : "error";
		
		switch (acao) {
		
			
		case "register":
			try {
				UserBean user = new UserBean();
				user.setNome(request.getParameter("nome"));
				user.setEmail(request.getParameter("email"));
				user.setTelefone(request.getParameter("telefone"));
				user.setSenha(request.getParameter("senha"));

				if (user.getTelefone() !=null && user.getTelefone().matches("^[0-9]+$")) {
					boolean valida = UserDao.validaEmail(user.getEmail());
					
					if(valida) {
						
						UserDao.register(user);
							
							response.sendRedirect("register.jsp?situacao=sucessoregister");
					} else {
						
						response.sendRedirect("register.jsp?situacao=erroemail");
					}
				  } else {
				        response.sendRedirect("register.jsp?situacao=telinvalido");
						return;
				    }
			
			} catch (Exception e) {

				response.sendRedirect("register.jsp?situacao=errocadastro");
			}
			break;
			
			
		case "login":
			try {
				UserBean user = new UserBean();
				user.setEmail(request.getParameter("email"));
				user.setSenha(request.getParameter("senha"));
				if(UserDao.login(user)) {
					HttpSession session = request.getSession();		
					session.setAttribute("user", user);
			
					response.sendRedirect("usuario/caderno.jsp?situacao=sucesso");
					return;
				} else {
					response.sendRedirect("register.jsp?situacao=errologin");
					return;
				}
				
			} catch (Exception e) {
				
				response.sendRedirect("register.jsp?situacao=errologinserv");
			}
			break;
			
			
		case "update":
			try {
				HttpSession session = request.getSession();
				UserBean user = (UserBean) session.getAttribute("user");
				
				String senha = request.getParameter("senha");
				String nSenha = request.getParameter("nsenha");
				String nSenha2 = request.getParameter("nsenha2");
				String tel = request.getParameter("telefone");
				if (tel !=null && tel.matches("^[0-9]+$")) {
					if(senha.equals(user.getSenha())) {
						if(nSenha.equals(nSenha2)) {
						
							
							int id = user.getId();
							
							user.setTelefone(request.getParameter("telefone"));
							user.setSenha(request.getParameter("nsenha"));
							user.setSituacao(1);
							
		
							UserDao.update(id, user);
							
							response.sendRedirect("usuario/atualizar.jsp?situacao=updatesucesso");
							return;
						} else {
							response.sendRedirect("usuario/atualizar.jsp?situacao=novasenhadiver");
							return;
						}
					} else {
						response.sendRedirect("usuario/atualizar.jsp?situacao=senhaincorreta");
						return;
					}
			        
			    } else {
			        response.sendRedirect("usuario/atualizar.jsp?situacao=telinvalido");
					return;
			    }
				
				
				
			} catch (Exception e) {
				e.getMessage();
				response.sendRedirect("usuario/atualizar.jsp?situacao=updateerror");	
				
			}
			break;
		default:
			response.sendRedirect("error.jsp?situacao=valerror");
			break;
		}
		

		// TODO Auto-generated method stub
		doGet(request, response);
		
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
