<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Caramelo</title>
    <link rel="stylesheet" href="app/resources/materialize/css/materialize.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="app/resources/materialize/css/style.css">
    <link rel="shortcut icon" href="app/resources/img/favicon.ico" type="image/x-icon">

</head>

<body class="black">

    <!--  navbar -->
    <nav class="nav-wrapper black">

        <a href="index.jsp" class="brand-logo valign-wrapper">
            <i class="large material-icons"><img src="app/resources/img/sugar.png" height="45px"
                    alt="Galeria de fotos"></i>Caramelo!
        </a>

        <ul class="right hide-on-med-and-down">
            <li><a href="register.jsp">Cadastro</a></li>
            <li><a href="#">Login</a></li>
        </ul>

        <form class="right hide-on-med-and-down">
            <input id="search" type="search" placeholder="Pesquise aqui" required>
        </form>

        <ul class="right hide-on-med-and-up">
            <li><a href="register.jsp">Cadastro</a></li>
        </ul>
    </nav>