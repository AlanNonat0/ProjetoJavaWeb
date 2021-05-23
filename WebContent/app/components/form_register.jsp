<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row mx-auto d-flex justify-content-around mt-4">

    <div class="col-lg-6 col-12 col-sm-6 col-xl-4">
    
    	<h3 class="text-white text-center">Cadastro</h3>

        <form action="UserServlet" method="post" >
            <label for="nome" class="text-white h5">Nome:</label>
            <input type="text" name="nome" id="nome" class="form-control" placeholder="Informe seu nome completo" required>

            <label for="email" class="text-white h5 mt-2">E-mail:</label>
            <input type="email" name="email" id="email" class="form-control" placeholder="Informe aqui seu e-mail" required>

            <label for="telefone" class="text-white h5 mt-2">Telefone:</label>
            <input type="tel" name="telefone" id="telefone" class="form-control" placeholder="Informe seu telefone" maxlength="13" required>


            <label for="senha" class="text-white h5 mt-2">Senha:</label>
            <input type="password" name="senha" id="senha" class="form-control" placeholder="Digite sua senha" maxlength="255" required>

			<div class="d-flex justify-content-center my-4">
				<button type="submit" name="register" class="btn btn-lg btn-warning">Cadastrar</button>
			</div>
         
        </form>
    </div>
    
     <div class="col-lg-4 col-12 col-sm-4 col-xl-4">
    
    	<h3 class="text-white text-center">Login</h3>

        <form action="UserServlet" method="post" >
            <label for="email" class="text-white h5">E-mail:</label>
            <input type="email" name="email" id="email-login" class="form-control" placeholder="Informe aqui seu e-mail" required>

            <label for="senha" class="text-white h5 mt-2">Senha:</label>
            <input type="password" name="senha" id="senha-login" class="form-control" placeholder="Digite sua senha" maxlength="255" required>

			<div class="d-flex justify-content-center my-4">
				<button type="submit" name="register" class="btn btn-lg btn-primary">Entrar</button>
			</div>
         
        </form>
    </div>
</div>