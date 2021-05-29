<%@ page isErrorPage="true"%>
<!-- Header -->
<jsp:include page="app/components/header.jsp"></jsp:include>

<div class="container-fluid">
<div class="row d-flex justify-content-center mt-4">	
<h1 class="text-white display-1 text-center">404 </h1>
<h2 class="text-white text-center">Ops, página não encontrada. </h2>

		<div class=" col-lg-6 col-12 col-sm-12 col-xl-6">
		    

    	
		 	<p class="text-white text-center">Desculpe, ocorreu um erro. Clique no botão abaixo para voltar a navegar no sistema.  </p>
				<div class="d-flex justify-content-center mt-4">
				<a href="<%= request.getContextPath() %>" class="btn btn-lg btn-primary">Voltar</a>
			
				
				</div>
		
		
		
		</div>
	</div>
</div>
<!-- Footer -->
<jsp:include page="app/components/footer.jsp"></jsp:include>