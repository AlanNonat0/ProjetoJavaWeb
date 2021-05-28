package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CadernoDao;
import model.ReceitaBean;
import model.ReceitaDao;
import model.UserBean;

/**
 * Servlet implementation class ReceitaServlet
 */
@WebServlet("/ReceitaServlet")
public class ReceitaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReceitaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserBean user=(UserBean) session.getAttribute("user");
		String acao = request.getParameter("acao") != null && !request.getParameter("acao").isEmpty()? request.getParameter("acao") : "error";
		
		switch(acao) {
		case "receita":
			try {
				String criador = user.getNome() != null ? user.getNome() : "Anônimo";
				String nomeReceita = request.getParameter("nome-receita");
				String descricao = request.getParameter("descricao");
				String categoria = request.getParameter("categoria");
				String ingredientes = request.getParameter("ingredientes");
				String preparo = request.getParameter("preparo");
				
				ReceitaBean receita = new ReceitaBean();
				receita.setCriador(criador);
				receita.setNome(nomeReceita);
				receita.setDescricao(descricao);
				receita.setCategoria(categoria);
				receita.setIngredientes(ingredientes);
				receita.setPreparo(preparo);
				
				int idReceita = ReceitaDao.inserirReceita(receita);
				CadernoDao.adicionarReceitaCaderno(user.getId(), idReceita);
				
				response.sendRedirect(request.getContextPath()+"/usuario/caderno.jsp?situacao=receitaok");
				
			} catch (Exception e) {
				// TODO: handle exception
				response.sendRedirect(request.getContextPath()+"/usuario/caderno.jsp?situacao=receitaerro");
				
			}
	
			
			break;
		}
		doGet(request, response);
	}

}
