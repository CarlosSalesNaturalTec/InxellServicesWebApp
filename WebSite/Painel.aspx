<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Painel.aspx.cs" Inherits="Painel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Suporte - Painel de Controle</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/hint.min.css">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
       

        body {
            background-image:url(img/fundo.jpg);
            background-repeat: repeat;
        }

        main {
            width: 960px;
            margin: 10px auto;
            box-shadow: 0 0 10px #999999;
            font-size: 13px;
            min-width: 960px;
        }

        #imagemroda {
            bottom: 0;
            height: 80px;
            left: 460px;
            position:fixed;
           width: 100%;
        }

        nav {
            width: 960px;
            height: 40px;
        }

            nav a {
                float: left;
                font-family: Georgia, "Times New Roman", Times, serif;
                font-style: italic;
                color: teal;
                text-decoration: none;
                padding: 5px 2%;
                margin-top: 5px;
                margin-right: 114px;
                font-size: 100%;
                text-align: center;
                padding-bottom:50px;
            }

      
      
    </style>

</head>
<body>

    


    <!--
    <div id="estilo">
         <a href="User_Listagem.aspx" id="change" target="iframe">Cadastrar Usuário</a>
    </div>
    -->
    <main>
        <nav id="estilo">
            <a href="Home.aspx" target="iframe"><i class="fa fa-home"></i>Home</a>
            <a href="User_Listagem.aspx" target="iframe"><i class="fa fa-user-plus"></i>Usuários</a>
            <a href="Chamado_Listagem.aspx" target="iframe"><i class="fa fa-bars"></i>Chamado</a>
            <a href="#" onclick="sair()">Sair<i class="fa fa-sign-out"></i></a>
        </nav>



        <div id="imagemroda">
            <img src="img/logo_inxell.png" />
        </div>


    </main>

     <div>
        <iframe src="Home.aspx" width="100%" height="500px" frameborder="0" name="iframe">Atualize seu Navegador!</iframe>
    </div>

    
    <!-- Modal LogOff -->
    <div id="DivLogOut" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-left" style="max-width: 400px">

            <form class="w3-container">
                <div class="w3-section w3-center">
                    <header class="w3-container w3-blue w3-center">
                        <h4><strong>Atenção</strong></h4>
                    </header>
                    <br />
                    <i class="fa fa-3x fa-exclamation-triangle" aria-hidden="true"></i>
                    <br />
                    <h3><strong>Confirma Saida?</strong> </h3>
                    <br />
                    <p>
                        <button type="button" class="w3-button w3-round w3-border w3-light-blue w3-hover-blue" onclick="sair_cancel()">Não</button>&nbsp;&nbsp;&nbsp;
                       
                        <button type="button" class="w3-button w3-round w3-border w3-light-blue w3-hover-blue" onclick="sair_exit()">Sim</button>
                    </p>
                    <br />
                </div>
            </form>
        </div>
    </div>
    
    <script src="scripts/CodePainel.js"></script>    

</body>
</html>
