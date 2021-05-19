<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="main valign-wrapper">

    <div class="container marg ">

        <form action="UserServlet" method="post">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome" class="white-text" required>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" class="white-text" required>

            <label for="telefone">Telefone:</label>
            <input type="tel" name="telefone" id="telefone" class="white-text" maxlength="13" required>


            <label for="senha">SENHA:</label>
            <input type="password" name="senha" id="senha" class="white-text" maxlength="255" required>

            <button type="submit" name="register"
                class="btn  yellow darken-3 black-text waves-effect waves-red">Cadastrar</button>

        </form>
    </div>
</div>