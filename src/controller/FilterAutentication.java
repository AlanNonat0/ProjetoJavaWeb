package controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserBean;

//intercepita
@WebFilter(urlPatterns= {"/usuario/*"})
public class FilterAutentication implements Filter{

	//faz alguma coisa quando a aplicação é derrubada
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	// intercepta todas as requisições
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		UserBean user = (UserBean) session.getAttribute("user");
		
		if(user == null){ // usuario nao logado
			resp.sendRedirect(req.getContextPath()+"/register.jsp?situacao=acessonegado");
			return; // para o processo e redireciona o processo, caso contrario ele continuará lendo as intruçoes
		}
		
		// executa as ações do request e do response
		chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
