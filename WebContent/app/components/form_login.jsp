<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="main valign-wrapper">

    <div class="container marg">

        <form action="UserServlet" method="post">

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" class="white-text" required>


            <label for="senha">SENHA:</label>
            <input type="password" name="senha" id="senha" class="white-text" maxlength="255" required>

            <button type="submit" name="register"
                class="btn  green darken-3 black-text waves-effect waves-red">Entrar</button>

        </form>
    </div>
</div>