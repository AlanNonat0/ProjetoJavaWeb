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

 <div class="row mt-4 mx-autod-flex  justify-content-center">
    <div class="col-6  mt-4">
    	<div class="card bg-dark mt-2 border-light">
    	
    		<div class="card-header border-light">
    			<div class="row"><small class="text-white"> Enviado por: <%= receita.getCriador() %></small></div>
    		<h3 class="text-white text-center"><%= receita.getNome() %></h3>
    		<h5 class="text-white text-center"><%= receita.getDescricao() %></h5>
    		</div>
    		<div class="card-body text-white mb-4">
    			<h3 class="text-white mt-4">Ingredientes</h3>
    			<p><strong><ul><li><%= receita.getIngredientes().replace("\n", "</li><br><li>") %></ul></strong>  </p>
    			<h3 class="text-white mt-5">Preparo</h3>
    			<p><strong><ol><li><%= receita.getPreparo().replace("\n", "</li><br><li>") %></ol> </strong></p>
    			
    			
    		</div>
    	</div>
    </div>
    </div>
</div>


<!-- Footer -->
<jsp:include page="app/components/footer.jsp"></jsp:include>
