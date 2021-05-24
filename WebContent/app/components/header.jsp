<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="model.UserBean" %>
<% 
	String context = request.getContextPath();
	UserBean user = (UserBean) session.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sabores</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>
    <script src="<%= context+"/app/resources/bootstrap/js/bootstrap.min.js" %>"></script>
    <link rel="stylesheet" href="<%= context+"/app/resources/bootstrap/css/bootstrap.css" %>">
    <link rel="shortcut icon" href="<%= context+"/app/resources/img/favicon.ico" %>" type="image/x-icon">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
	
</head>
<style>
*{
	font-family: 'Poppins', sans-serif !important;
}
</style>
<body class="bg bg-dark" style="padding-bottom: 4rem">

    <nav class="navbar navbar-expand navbar-light bg-light ">
      <div class="container-fluid">
        <a href="<%= context+"/index.jsp" %>" class="navbar-brand d-flex">
            <img src="<%= context+"/app/resources/img/chef.svg" %>" width="45" height="45" />
            <span class="h3 px-2 pt-2">Sabores</span>
        </a>

        
	      
        <div class="d-flex">
        
	      <ul class="d-flex justify-content-end navbar-nav me-auto">
	      
	      <% if(user == null){ %>
		    <li class="nav-item">
		       <a class="nav-link" href="<%= context+"/register.jsp" %>">Entrar</a>
		      	
		     </li>
		     <%} else { %>
		    <li class="nav-item">
		       <a class="nav-link" href="<%= context+"/SessionServlet?logout=yes" %>">Sair</a>
		      	
		     </li>
		     <%} %>
		        
		 </ul>

	    </div>
	   </div>
	</nav>

    
    
    
    
    
    