<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.UserBean" %>
<% 
	UserBean user = (UserBean) session.getAttribute("user");
	String context = request.getContextPath();
	String nome = "";
	if(user != null){
		nome = user.getNome() != null? user.getNome() : "";
	}
	
%>

<div class="row mt-3">
   <div class="col-12 mx-auto d-flex justify-content-center ">
<!-- Register/Login -->
    <%
	String situacao = request.getParameter("situacao");
	
	if(situacao != null && request.getParameter("situacao").equals("errologin")) { %>
	
		<h4 class="text-white text-center justify-content-around">Usuário ou senha incorretos</h4>

	<% } 
	if((situacao != null && request.getParameter("situacao").equals("errocadastro")) || (situacao != null && situacao.equals("errologinserv"))) { %>
	
      <h4 class="text-white text-center ">Ocorreu um erro. Tente novamente em alguns instantes</h4>
	
	<% } 
	if((situacao != null && request.getParameter("situacao").equals("erroemail"))){ %>
	
      <h4 class="text-white text-center ">E-mail inválido</h4>
		
	
	<% } %> 
	
<!-- Update -->
<%
 if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("updateerror")){ %>

      <h4 class="text-white text-center ">Não foi possível atualizar</h4>
	

  <% }  
	if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("updatesucesso")){ %>

      <h4 class="text-white text-center ">Dados atualizados com sucesso</h4>
	

  <% } 
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("novasenhadiver")){ %>

      <h4 class="text-white text-center ">Senha nova divergente</h4>

  <% }
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("senhaincorreta")){ %>

      <h4 class="text-white text-center ">Senha inválida</h4>
	
  <% } 
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("telinvalido")){ %>
      	<h4 class="text-white text-center ">Telefone inválido. Digite apenas números</h4>
	
  <% } 
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("sucesso")){ %>
      <h4 class="text-white text-center ">Bem-vindo ao seu caderno <%= nome %></h4>
	

  <% }
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("sucessoregister")){ %>

		<h4 class="text-white text-center ">Cadastrado com sucesso</h4>
	

<% } %>
  
   	</div>
   	</div>	