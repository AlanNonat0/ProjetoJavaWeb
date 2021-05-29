<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp" %>
	<%@ page import="model.UserBean" %>
	<%@ page import="model.ReceitaBean" %>
	<%@ page import="model.CadernoDao" %>
	<%@ page import="java.util.*" %>

<% 
	// lista todas as receitas salvas
	UserBean user = (UserBean) session.getAttribute("user");
	CadernoDao caderno = new CadernoDao();
	List<ReceitaBean> receita = caderno.listarCaderno(user.getId());
	
	// efetua busca por termo e categoria
	List<ReceitaBean> buscaReceita = null;
	String busca = request.getParameter("buscar") != null ? request.getParameter("buscar") : "" ;
	if(request.getParameter("busca-caderno") != null && request.getParameter("busca-caderno").equals("search")){
		buscaReceita = caderno.buscarReceitaCaderno(user.getId(), request.getParameter("buscar"), request.getParameter("categoria"));
	}
	
	// Pega url base
	String context=request.getContextPath(); 
%>

<!-- Header -->
<jsp:include page="../app/components/header.jsp"></jsp:include>

<!-- Nav_user -->
<jsp:include page="../app/components/nav_user.jsp"></jsp:include>



<div class="container-fluid">

				<!-- -----------------Area de alertas----------------- -->
				<jsp:include page="../app/components/alert.jsp"></jsp:include>
				<!-- ------------------------------------------------- -->
				
	<div class="row d-flex justify-content-center mt-4">
		<div class=" col-lg-8 col-12 col-sm-12 col-xl-8">
			<h4 class="text-white text-center">Encontre aqui suas receitas salvas</h4>
			<form class="form-control" action="<%= context+"/usuario/caderno.jsp" %>" method="get">
			<div class="row">
				<div class="col-lg-9 col-xl-9 col-sm-8 col-12">
					<input type="text" class="form-control mx-auto" placeholder="Digite aqui sua busca" name="buscar"/>
					</div>
					
					<div class="col-lg-3 col-xl-3 col-sm-4 col-12">
						<select name="categoria" id="categoria" class="form-select">
							<option value="">Todos</option>
							<option value="refeicao">Refeição</option>
							<option value="salada">Salada</option>
							<option value="confeitaria">Confeitaria</option>
							<option value="bebida">Bebida</option>
						</select>
					</div>
				<button type="submit" hidden="true"  class="form-control" name="busca-caderno" value="search"></button>
				
				</div>
			</form>
		</div>
	</div>

<div class="row mt-4">

<%
if(buscaReceita == null){
	if(receita.size() > 0){
		for(int i=0; i < receita.size(); i++){ %>
		
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card bg bg-light">
			 <div class="card-header ">
			 	 <h5 class="card-title"><%= receita.get(i).getNome()%></h5>
			 </div>
			  <div class="card-body">
			   
			    <p class="card-text"><%= receita.get(i).getDescricao() %></p>
			    <div class="d-flex justify-content-end">
			    <a href="<%= context+"/preparo.jsp?show="+receita.get(i).getId() %>" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>			
		</div>
	
	
		
		
<%	}
	} else { %>
	
	<div class="row d-flex justify-content-center mt-4">
			<div class=" col-lg-8 col-12 col-sm-12 col-xl-8">
				<h4 class="text-white text-center">Não foram encontradas receitas salvas</h4>
			</div>
		</div>
		
<%	}
} else {
	if(buscaReceita.size() > 0){
	for(int i=0; i < buscaReceita.size(); i++){%>
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card bg bg-light">
			<div class="card-header ">
			 	 <h5 class="card-title"><%= buscaReceita.get(i).getNome()%></h5>
			 </div>
			  <div class="card-body">
			   
			    <p class="card-text"><%= buscaReceita.get(i).getDescricao() %></p>
			    <div class="d-flex justify-content-end">
			    	<a href="<%= context+"/preparo.jsp?show="+receita.get(i).getId() %>" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>			
		</div>	
	
	<% }
	
	} else { %>
		<div class="row d-flex justify-content-center mt-4">
			<div class=" col-lg-8 col-12 col-sm-12 col-xl-8">
				<h4 class="text-white text-center">Não foram encontradas receitas salvas</h4>
			</div>
		</div>
<%}} %>

	
</div>

</div>


<!-- Footer -->
<jsp:include page="../app/components/footer.jsp"></jsp:include>