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

			
					<input type="text" name="nome-receita" id="nome-receita" class="form-control"
						placeholder="Nome da receita" required>

					
					<div class="form-row d-flex justify-content-around mt-0">

						<div class="form-group justify-content-start col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mt-3">
			
							<input type="text" name="descricao" id="descricao" class="form-control"
								placeholder="Digite uma breve descrição" maxlength="255" required>
						</div>
						<div class="form-group col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mt-3">
							<select name="categoria" id="categoria" class="form-control">
								<option value="refeicao">Refeição</option>
								<option value="salada">Salada</option>
								<option value="confeitaria">Confeitaria</option>
								<option value="bebida">Bebida</option>
							</select>
						</div>

					</div>




					<label for="ingredientes"><small class="text-white">Escreva cada ingrediente por linha, não
							ultilize marcadores</small></label>
					<textarea name="ingredientes" id="ingredientes" cols="10" rows="4"
						class="form-control"></textarea>

					<label for="preparo"><small class="text-white">Descreva os passo por linha e para separar
							não ultilize hifem numeração ou qualquer outro marcador</small></label>
					<textarea name="preparo" id="preparo" cols="10" rows="4" class="form-control"></textarea>
					<div class="d-flex justify-content-center mt-4">

						<button type="submit" name="acao" value="receita" class="btn btn-lg btn-primary">Enviar</button>
					</div>

				</form>
			</div>
		</div>
	</div>

<!-- Footer -->
<jsp:include page="../app/components/footer.jsp"></jsp:include>