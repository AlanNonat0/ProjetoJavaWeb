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
	   <div class="col-12 col-xl-7 col-lg-7 mx-auto d-flex justify-content-center">
	  
	    	
	    	<jsp:include page="../app/components/form_user_update.jsp"></jsp:include>
	    	
	   </div>
	    
	    <div class="col-12 col-lg-5 col-xl-5 mx-auto">
	    	<div class="card bg-dark border-transparent">
	    		<div class="card-header p-0"><h3 class="card-title text-white text-center">Dados pessoais</h3></div>
	    		<div class="card-body pb-0 pt-4 px-0 text-white">
	    		
	    			<ul class="list-group list-group-flush">
	    				<li class="list-group-item list-group-item-secondary pe-0"><span class='fw-bold'>Nome:</span> <%= nome %> </li>
	    				<li class="list-group-item list-group-item-secondary pe-0"><span class='fw-bold'>E-mail:</span> <%= email %> </li>
	    				<li class="list-group-item list-group-item-secondary pe-0"><span class='fw-bold'>Telefone:</span> <%= telefone %></li>
	    				<li class="list-group-item list-group-item-secondary pe-0"><span class="fw-bold">Última Atualização:</span> <%= up.substring(0, 10) %></li>
	    				<li class="list-group-item list-group-item-secondary pe-0"><span class="fw-bold"><small>Mantenha seus dados sempre atualizados*</small></li>
	    			</ul>
	    			
	    			
	    		</div>
	    	</div>
	    </div>
	
	</div>
</div>
<!-- Footer -->
<jsp:include page="../app/components/footer.jsp"></jsp:include>
