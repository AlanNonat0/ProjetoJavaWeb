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
<!-- Register/Login -->
    <%
	String situacao = request.getParameter("situacao");
	
	if(situacao != null && request.getParameter("situacao").equals("errologin")) { %>
	
		<h3 class="text-white text-center justify-content-around">Usuario ou senha incorretos</h3>

	<% } 
	if((situacao != null && request.getParameter("situacao").equals("errocadastro")) || (situacao != null && situacao.equals("errologinserv"))) { %>
	
	<div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Ocorreu um erro ao processar tente novamente em alguns instantes</h4>
		</div>
	</div>
	
	<% } 
	if((situacao != null && request.getParameter("situacao").equals("erroemail"))){ %>
	
	<div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Email inválido</h4>
		</div>
	</div>
	
	<% } %> 
	
<!-- Update -->
<%
 if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("updateerror")){ %>
 <div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Não foi possivel atualizar</h4>
		</div>
	</div>

  <% }  
	if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("updatesucesso")){ %>
 <div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Dados atualizados com sucesso</h4>
		</div>
	</div>

  <% } 
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("novasenhadiver")){ %>
 <div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Nova senha diferentes</h4>
		</div>
	</div>

  <% }
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("senhaincorreta")){ %>
 <div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Senha inválida</h4>
		</div>
	</div>

  <% } 
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("telinvalido")){ %>
 <div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Telefone invalido digite apenas números</h4>
		</div>
	</div>

  <% } 
  if(request.getParameter("situacao") != null && request.getParameter("situacao").equals("sucesso")){ %>
 <div class="row justify-content-center">
		<div class="col-6 ">
      		<h4 class="text-white text-center ">Bem vindo ao seu Caderno <%= nome %></h4>
		</div>
	</div>

  <% } %>
  
   		