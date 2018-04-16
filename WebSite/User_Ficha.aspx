<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Ficha.aspx.cs" Inherits="User_Ficha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ficha Usuário</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Styles: W3, BootsStrap, Font-Awesome -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Paginação -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" />

    <style>
        body {
            background-image: url(img/fundo.jpg);
            background-repeat: repeat;
        }
    </style>
</head>
<body>
      <div style="margin-left: 180px">

        <div id="grupo1" class="w3-container grupo   w3-animate-left" style="display: block " margin-top:"-25px;">
            <br />
            <div class="col-md-9  w3-round w3-light-gray">
                <!--*******Customização*******-->
                <h3><i class="fa fa-check-square-o  " aria-hidden="true"></i>&nbsp;Novo Usuário</h3>
            </div>

            <div class="w3-threequarter" style="margin-top: 20px">
                <form class="form-horizontal">
                    <!--*******Customização*******-->
                    <fieldset>
                        <br />
                        <div class="form-group">
                            <label for="input1" class="col-md-2 control-label">Nome</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="input1">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="input2" class="col-md-2 control-label">CPF</label>
                            <div class="col-md-2">
                                <input type="text" class="form-control" id="input2">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="input_sis" class="col-md-2 control-label">Sistema</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="input_sis">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="input_cid" class="col-md-2 control-label">Cidade</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="input_cid">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="input_email" class="col-md-2 control-label">E-mail</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="input_email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input_nivel" class="col-md-2 control-label">Nivel</label>
                            <div class="col-md-4">
                                <select  class="form-control" id="input_nivel">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                            </div>
                        </div>

                    </fieldset>
                </form>
            </div>

            <div class="w3-quarter">
            </div>

            <!-- Botões Controle -->
            <div class="col-md-9 w3-round w3-padding" style="margin-top: -15px">
                <br />
                <div class="col-md-2"></div>
                <p>

                    <button class="w3-btn w3-round w3-border w3-light-green w3-hover-green btcontroles" onclick="SalvarRegistro()">
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Finalizar&nbsp;&nbsp;
                    </button>

                    <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-green w3-right"></i>
                </p>
            </div>
            <!-- Botões Controle -->


        </div>

    </div>
</body>
</html>
