<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Natural Tecnologia">
    <title>INXELL Central de Suporte Técnico</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Menu -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top" onclick="header();"><img src="img/logo_inxell.png" /></a>

            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#" onclick="login_master();">Entrar</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Seção Inicial-->
    <header class="masthead">
        <div class="header-content">
            <div class="header-content-inner" id="divHeader">
                <h1 id="homeHeading">Central de Suporte Técnico</h1>                
                <hr>           
                <br />
                <br />
                <br />
                <button class="btn btn-success btn-xl " style="cursor:pointer" onclick="login_master()">Solicitar Suporte</button>
            </div>
        </div>
    </header>

    <!-- Login Master-->
    <div id="divLogin" class="w3-display-middle" style="display: none">
        <section class="w3-padding w3-center w3-animate-left" style="max-width: 400px">
             <h5><strong><i class="fa fa-hands-helping" aria-hidden="true"></i>&nbsp;INXELL Suporte Técnico</strong></h5>
            <br />
            <p>
                <input id="inputUser" placeholder="Usuário" class="w3-input w3-border w3-round" type="text" />
            </p>
            <p>
                <input id="inputPwd" placeholder="Senha" class="w3-input w3-border w3-round" type="password" />
            </p>
            <p>
                <button id="btLogin" class="w3-btn w3-green w3-round" onclick="TentarLogin()">Entrar</button>
            </p>
           
        </section>
    </div>

    <!-- DIV login não autorizado/retorno -->
    <div id="divRetornoSenha" class="w3-display-middle" style="display: none">
        <section class="w3-padding w3-center w3-animate-left" style="max-width: 400px">
            <h2><strong>Atenção !</strong> </h2>
            <p>
                <span id="lblMsgRetorno"></span>
            </p>
            <p>
                <button id="btVoltar" class="w3-btn w3-green w3-round" onclick="LoginVoltar()">Tentar Novamente</button>
            </p>
            <h5><i class="fa fa-hands-helping" aria-hidden="true"></i>&nbsp;INXELL Suporte Técnico</h5>
        </section>
    </div>

    <!-- Módulos da Plataforma -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Suporte aos Módulos</h2>
                </div>
            </div>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-university text-primary sr-icons"></i>
                        <h3>Master</h3>
                        <p class="text-muted">GEDUM - Gestão Educacional</p>
                    </div>  
                </div>
              <!--
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-building-o text-primary sr-icons"></i>
                        <h3>Operacional</h3>
                        <p class="text-muted">Ponto Biométrico</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-user text-primary sr-icons"></i>
                        <h3>Portal do Aluno</h3>
                        <p class="text-muted">Gestor de Saúde</p>
                    </div>
                </div>
                -->

                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-info text-primary sr-icons"></i>
                        <h3>Suporte</h3>
                        <p class="text-muted">Estacionamento Digital</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Download -->
    <div class="call-to-action bg-dark">
        <div class="container text-center">
            <h2>Baixe nosso Aplicativo!</h2>
            <a class="btn btn-default btn-xl sr-button" href="#">Download!</a>
        </div>
    </div>

    <!-- Contato -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mx-auto text-center">
                    <h2 class="section-heading">Fale Direto!</h2>
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 ml-auto text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>(71) 3508-3780</p>
                </div>
                <div class="col-lg-4 mr-auto text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p>
                        <a href="mailto:suporte@inxell.com.br">suporte@inxell.com.br</a>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Script-->
    <script type="text/javascript" src="scripts/codeIndex.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>
</body>
</html>
