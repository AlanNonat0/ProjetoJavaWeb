<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp" %>
	<%@ page import="model.UserBean" %>

<% 
// Recupera objeto da sessão e url base
UserBean user=(UserBean) session.getAttribute("user");
String context=request.getContextPath(); 
%>

<!-- Header -->
<jsp:include page="../app/components/header.jsp"></jsp:include>

<!-- Nav_user -->
<jsp:include page="../app/components/nav_user.jsp"></jsp:include>


	<div class="container-fluid">
			
		<!-- -----------------Area de alertas----------------- -->
		<jsp:include page="../app/components/alert.jsp"></jsp:include>
		<!-- ----------------------------------------------- -->
		
		<div class="row d-flex justify-content-around mt-4">
			<div class=" col-lg-8 col-12 col-sm-12 col-xl-8">
				<form action="<%= context+"/ReceitaServlet" %>" method="post" >

					<h3 class="text-white text-center">Enviar receita</h3>

					<div class="row">
						<div class="col-12">
						 <input type="text" name="nome-receita" id="nome-receita" class="form-control"
						placeholder="Nome da receita" required>
						 
						</div>
					</div>
					
					<div class='row mt-3'>
						<div class="col-lg-8 col-12">
							<input type="text" name="descricao" id="descricao" class="form-control"
								placeholder="Digite uma breve descrição" maxlength="255" required>
						</div>
						<div class="col-lg-4 col-12 mt-lg-0 mt-xl-0 mt-sm-3 mt-3">
						
							<select name="categoria" id="categoria" class="form-select">
								<option value="refeicao">Refeição</option>
								<option value="salada">Salada</option>
								<option value="confeitaria">Confeitaria</option>
								<option value="bebida">Bebida</option>
							</select>
						
						</div>
					</div>
					
					<div class='row mt-3'>
						<div class='col-12'>
							<textarea name="ingredientes" id="ingredientes" cols="10" rows="4"
							class="form-control" placeholder="Liste os ingredientes"></textarea>
							<label for="ingredientes"><small class="text-white">Escreva cada ingrediente por linha, não
								ultilize marcadores</small></label>
						</div>
					
					</div>	
					
					<div class='row mt-3'>
						<div class='col-12'>
							<textarea name="preparo" id="preparo" cols="10" rows="4" class="form-control" placeholder="Descreva o passo a passo"></textarea>
							<label for="preparo"><small class="text-white">Descreva o passo a passo por linha e não utilize hífem, numeração ou qualquer outro marcador</small></label>
						</div>
					
					</div>					
					

					
					
					
					<div class="d-flex justify-content-center mt-4">

						<button type="submit" name="acao" value="receita" class="btn btn-lg btn-primary">Enviar</button>
					</div>

				</form>
			</div>
		</div>
	</div>

<!-- Footer -->
<jsp:include page="../app/components/footer.jsp"></jsp:include>