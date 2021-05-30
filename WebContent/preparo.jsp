<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
    <%@ page import="model.ReceitaBean" %>
    <%@ page import="model.ReceitaDao" %>
<%
// Processa a busca do lado jsp para conseguir manter a url caso queira compartilhar o link
if(request.getParameter("show") != null){
		ReceitaDao receitaDao = new ReceitaDao();
		ReceitaBean receita;
		try {
			int id = Integer.parseInt(request.getParameter("show"));
			receita = receitaDao.buscarReceita(id);	
			session.setAttribute("receita", receita);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
}
ReceitaBean receita = (ReceitaBean) session.getAttribute("receita");
%>

<!-- Header -->
<jsp:include page="app/components/header.jsp"></jsp:include>



<div class="container-fluid">

 <div class="row mx-autod-flex  justify-content-center">
    <div class="col-lg-6 col-xl-6 col-sm-8 col-12  mt-4">
    	<div class="card  bg bg-light mt-2">
    	
    		<div class="card-header ">
	    		<h3 class="text-dark text-center"><%= receita.getNome() %></h3>
	    		<h5 class="text-dark text-center"><%= receita.getDescricao() %></h5>
	    		<div class="d-flex justify-content-end"><small class="text-dark"> Enviado por: <%= receita.getCriador() %></small></div>
    		</div>
    		<div class="card-body mb-4">
    			<h3 class=" mt-4">Ingredientes</h3>
    				<ul><li><%= receita.getIngredientes().replace("\n", "</li><br><li>") %></ul> 
    			<h3 class=" mt-4">Preparo</h3>
    				<ol><li><%= receita.getPreparo().replace("\n", "</li><br><li>") %></ol>
    			
    			
    		</div>
    	</div>
    </div>
    </div>
</div>


<!-- Footer -->
<jsp:include page="app/components/footer.jsp"></jsp:include>
