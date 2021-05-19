<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Header -->
<jsp:include page="app/components/header.jsp"></jsp:include>

    <!--  Slider -->
    <div class="slider">
        <ul class="slides hoverable">

            <li>
                <img src="app/resources/img/bolo.jpg"> <!-- random image -->
                <div class="caption center-align">
                    <h3 class=" center-aling">Bem vindo ao Caramelo!</h3>
                    <h5 class="light grey-text text-lighten-3">A melhor experiencia!</h5>
                </div>
            </li>
            <li>
                <img src="app/resources/img/pizza.jpg"> <!-- random image -->
                <div class="caption left-align">
                    <h3 class="light grey-text text-lighten-3">Guarde suas receitas</h3>
                    <h5 class="light grey-text text-lighten-3">maior segurança com suas lembranças</h5>
                </div>
            </li>
            <li>
                <img src="app/resources/img/torta.jpg"> <!-- random image -->
                <div class="caption right-align">
                    <h3>Compartilhe experiencias</h3>
                    <h5 class="light grey-text text-lighten-3">Torne suas habilidades famosas</h5>
                </div>
            </li>

            <li>
                <img src="app/resources/img/strogonoff.jpg"> <!-- random image -->
                <div class="caption center-align">
                    <h2>Divirta-se!</h2>
                    <h5 class="light grey-text text-lighten-3">sem moderação</h5>
                </div>
            </li>

        </ul>

    </div>


    <!--  text  -->
    <div class="section black">
        <div class="row container">

            <h1 class="white-text text-darken-3 lighten-3 center">Encontre as melhores receitas receitas</h1>

            <!-- Barra busca meio -->
            <form method="GET">
                <div class="row valign-wrapper">

                    <div class="input-field col s12">
                        <input class="col s12" id="search-mid" type="search" placeholder="Digite aqui sua busca"
                            required>
                        <i class="material-icons marg-close">close</i>
                    </div>
                    <div class="col s1"><label class="label-icon" for="search-mid"><i
                                class="material-icons">search</i></label></div>
                </div>

            </form>


        </div>
    </div>

    <!-- receitas -->

    <div class="section">
        <div class="row">

            <div class="col s12 m6 l3">

                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light break borda height-card-img">
                        <img class="activator img-receita" src="app/resources/img/bolo.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Bolo de chocolate</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p class="">Here is some more information about this product that is only revealed once clicked
                            on.</p>
                    </div>
                </div>


            </div>




            <div class="col s12 m6 l3">
                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda  height-card-img">
                        <img class="activator img-receita" src="app/resources/img/pizza.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Pizza 4 queijos</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>




            <div class="col s12 m6 l3">

                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda height-card-img">
                        <img class="activator img-receita" src="app/resources/img/torta.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Torta de maçã deliciosa!</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>




            <div class="col s12 m6 l3">
                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda height-card-img">
                        <img class="activator img-receita" src="app/resources/img/strogonoff.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Strogonoff Supreme</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>




            <div class="col s12 m6 l3">
                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda height-card-img">
                        <img class="activator img-receita" src="app/resources/img/cafe.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Café colombiano</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>

            <div class="col s12 m6 l3">
                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda">
                        <img class="activator img-receita" src="app/resources/img/carbonara.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Macarrão a Carbonara</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>

            <div class="col s12 m6 l3">
                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda height-card-img">
                        <img class="activator img-receita" src="app/resources/img/arroz.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Arroz soltinho</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>

            <div class="col s12 m6 l3">
                <div class="card borda">
                    <div class="card-image waves-effect waves-block waves-light borda height-card-img">
                        <img class="activator img-receita" src="app/resources/img/hamburguer.jpg">
                    </div>
                    <div class="card-content height-card-product">
                        <span class="card-title activator grey-text text-darken-4 text-hide"><i
                                class="material-icons right">more_vert</i>Hamburguer artezanal</span>
                        <p><a href="#">Confira</a></p>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4"><i class="material-icons right">close</i>Card
                            Title</span>
                        <p>Here is some more information about this product that is only revealed once clicked on.</p>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <!--  paralax effect -->
    <div class="parallax-container" style="height: 400px">
        <div class="parallax"><img src="app/resources/img/cafe.jpg"></div>
    </div>

    <div class="section white">
        <div class="row  black-text text-darken-3 lighten-3 center">
            <H2>Suas receitas reconhecidas mundialmente</H2>
        </div>
    </div>

    <!--  text -->
    <div class="section black">
        <div class="row  white-text text-darken-3 lighten-3 center valign-wrapper">
            <div class="col s12 l6 m12">
                <h2>Compartilhe seus dotes culinarios</h2>
                <p class="white-text text-darken-3 lighten-3">
                    No Caramelo você pode compartilhar sua receita com uma infinidade de mebros.
                    Trocando receitas de forma intuitiva rapida </p>

            </div>

            <div class="col m6 l6 hide-on-med-and-down">

                <img src="app/resources/img/caderno-receitas.jpg" class="borda" alt="Caderno de receitas" width="100%" height="400px">

            </div>
        </div>
    </div>

    <!--  float button -->
    <div class="fixed-action-btn">

        <a class="btn-floating btn-large red">
            <i class="large material-icons">mode_edit</i>
        </a>
        <ul>
            <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
            <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
            <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
            <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
        </ul>
    </div>
    
    <div class="row">
    	
    	<div class="col s12 m6 l6">
    	<h3 class="white-text center">Cadastre-se</h3>
    	<jsp:include page="app/components/form_register.jsp"></jsp:include>
    	</div>
    	<div class="col s12 m6 l6">
    	<h3 class="white-text center">Entre</h3>
    	<jsp:include page="app/components/form_login.jsp"></jsp:include>
    	</div>
    </div>
    
    
    <!-- Footer -->>
    <jsp:include page="app/components/footer.jsp"></jsp:include>