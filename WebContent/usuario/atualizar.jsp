<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="model.UserBean" %>

<% 
	// Recupera dados da sessão para apresentação
	UserBean user = (UserBean) session.getAttribute("user");
	String context = request.getContextPath();
	String nome = user.getNome() != null ? user.getNome() : "";
	String email = user.getEmail() != null ? user.getEmail() : "";
	String telefone = user.getTelefone() != null ? user.getTelefone() : "";
	String up = user.getDataUp() != null ? user.getDataUp() : "";
%>

<!-- Header -->
<jsp:include page="../app/components/header.jsp"></jsp:include>

<!-- Nav_user -->
<jsp:include page="../app/components/nav_user.jsp"></jsp:include>
<div class="container-fluid">
	<div class="row mt4">
		<!-- -----------------Area de alertas----------------- -->
		<jsp:include page="../app/components/alert.jsp"></jsp:include>
		<!-- ------------------------------------------------- -->
	</div>
	<div class="row mt-4">
	   <div class="col-6 mx-autod-flex  justify-content-center ">
	  
	    	<h3 class="white-text center">atualizar</h3>
	    	<jsp:include page="../app/components/form_user_update.jsp"></jsp:include>
	    	
	   </div>
	    
	    <div class="col-6 mx-autod-flex  justify-content-center mt-4">
	    	<div class="card bg-dark mt-2 border-light">
	    		<div class="card-header border-light"><h3 class="text-white text-center">Dados pessoais</h3></div>
	    		<div class="card-body text-white mb-3">
	    			<p>Nome: <strong><%= nome %> </strong> </p>
	    			<p>Email: <strong><%= email %> </strong></p>
	    			<p>Telefone: <strong><%= telefone %> </strong></p>
	    			<p>ultima atualização: <strong><%= up.substring(0, 10) %> </strong></p>
	    			<p><small>Mantenha seus dados sempre atualizados*</small></p>
	    			<br><br>
	    		</div>
	    	</div>
	    </div>
	
	</div>
</div>
<!-- Footer -->
<jsp:include page="../app/components/footer.jsp"></jsp:include>
