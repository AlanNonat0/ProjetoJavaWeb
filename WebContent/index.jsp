<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/error.jsp"%>
<% 	String context = request.getContextPath();%>
<!-- Header -->
<jsp:include page="app/components/header.jsp"></jsp:include>

<div class="container-fluid">
    <div id="carouselReceitas" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselReceitas" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselReceitas" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselReceitas" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <div style="min-width: 100%; height: 400px; background-image: url(<%= context+"/app/resources/img/bolo.jpg" %>); background-size: cover; background-position:left"> </div>
	    	 <div class="carousel-caption d-none d-md-block">
		        <h2 class="text-end font-weight-bold">Bem-vindo ao Sabores</h2>
		        <p class="text-end">As melhores receitas. A melhor experiência </p>
		      </div>
	    </div>
	    <div class="carousel-item">
	      <div style="min-width: 100%; height: 400px; background-image: url(<%= context+"/app/resources/img/receita-.jpg" %>); background-size: cover; background-position:left"> </div>
	    	<div class="carousel-caption ">
		        <h2 class="text-start font-weight-bold">Guarde suas receitas</h2>
		        <p class="text-start">Acesse suas receitas favoritas a qualquer momento</p>
		      </div>
	    </div>
	    
	    <div class="carousel-item">
	      <div style="min-width: 100%; height: 400px; background-image: url(<%= context+"/app/resources/img/macarrao.jpg" %>); background-size: cover; background-position:left"> </div>
	    	<div class="carousel-caption ">
		        <h2 class="text-end font-weight-bold">Compartilhe experiências</h2>
		        <p class="text-end">Publique e compartilhe suas receitas favoritas</p>
		      </div>
	    </div>
	    
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselReceitas" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Anterior</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselReceitas" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Próximo</span>
	  </button>
	</div>
	
	
	<div class="row d-flex justify-content-center mt-4">
		<div class=" col-lg-6 col-12 col-sm-12 col-xl-6">
			<h4 class="text-white text-center">Encontre aqui as receitas mais saborosas</h4>
			<form>
				<input type="text" class="form-control mx-auto" placeholder="Digite aqui sua busca" />
			</form>
		</div>
	</div>
	
	<div class="row mt-4">
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/bolo.jpg" %>" class="card-img-top" alt="Bolo trufado" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Bolo Trufado</h5>
			    <p class="card-text">Bolo delicioso de chocolate trufado decorado com cerejas.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=4" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>			
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/pizza.jpg" %>" class="card-img-top" alt="Pizza" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Pizza</h5>
			    <p class="card-text">Que tal surpreender com uma pizza caseira e cheia de sabor?!</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=5" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
			
			
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/sopa.jpg" %>" class="card-img-top" alt="Sopa de Lentilha" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Sopa de lentilha</h5>
			    <p class="card-text">Sopa de lentilha repleta de temperos e sabores diferenciados.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=6" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
			
			
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/milkshake.jpg" %>" class="card-img-top" alt="MIlkshake" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Milkshake de Morango</h5>
			    <p class="card-text">Colorido e delicioso. Perfeito para as crianças.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=7" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
			
			
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/arroz.jpg" %>" class="card-img-top" alt="Arroz" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Arroz Soltinho</h5>
			    <p class="card-text">Receita infálivel para que seu arroz sempre fique bem soltinho.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=8" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/hamburguer.jpg" %>" class="card-img-top" alt="Hambúrguer Artesanal" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Hambúrguer Artesanal</h5>
			    <p class="card-text">Receita clássica capaz de conquistar todos os paladares.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=9" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/torta.jpg" %>" class="card-img-top" alt="Torta de Maçã" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Torta de Maçã</h5>
			    <p class="card-text">Receita queridinha. Ideal para dias mais frios.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=10" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
		</div>
		
		<div class="col-lg-3 col-sm-6 pb-2">
			<div class="card border border-dark" style="height: 367.84px !important;">
			  <img src="<%= context+"/app/resources/img/cafe.jpg" %>" class="card-img-top" alt="Café" style="min-height: 206.84px !important">
			  <div class="card-body">
			    <h5 class="card-title">Café Colombiano</h5>
			    <p class="card-text">Café diferenciado de sabor intenso.</p>
			    <div class="d-flex justify-content-end">
			    	<a href="preparo.jsp?show=11" class="btn-block btn btn-outline-dark btn-sm">Confira aqui</a>
			    </div>
			    
			  </div>
			</div>
		</div>
	</div>
	
	 <div class="mt-4" style="min-width: 100%; height: 200px; background-image: url(<%= context+"/app/resources/img/tempero-2.jpg" %>); background-size: cover; background-position:left"> 
	 </div>

			<h3 class="text-white text-center mt-3">Guia geral de como usar e combinar os mais variados temperos</h3>
			<div class="d-flex justify-content-center">
				<button type="button" class="btn btn-light mb-3 btn-block d-flex justify-content-center">Confira</button>
				
			</div>
			
</div>
  
		
	
	<!-- footer -->
<jsp:include page="app/components/footer.jsp"></jsp:include>
