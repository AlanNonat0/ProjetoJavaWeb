<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.UserBean" %>
    <% UserBean user=(UserBean) session.getAttribute("user"); String context=request.getContextPath(); %>
    
<nav class="navbar navbar-expand navbar-light bg-light ">
	<div class="container-fluid">
		<div class="d-flex">
			<ul class="d-flex justify-content-start navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link" href="<%= context+"/usuario/receita.jsp"%>">enviar receita</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= context+"/usuario/caderno.jsp"%>">meu caderno</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= context+"/usuario/atualizar.jsp" %>">atualizar dados</a></li>
			</ul>
		</div>
	</div>
</nav>