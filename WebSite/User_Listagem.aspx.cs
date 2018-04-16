using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_listagem : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    int TotaldeRegistros = 0;
    string iduser;
    int nivel;



    protected void Page_Load(object sender, EventArgs e)
    {
        nivel = Convert.ToInt16(Session["UserLevel"].ToString());
        if (nivel < 1) { Response.Redirect("NaoAutorizado.aspx"); }

        iduser = Session["UserID"].ToString();

        montaCabecalho();
        dadosCorpo();
        montaRodape();

        Literal1.Text = str.ToString();



    }

    private void montaCabecalho()
    {
        // <!--*******Customização*******-->
        string stringcomaspas = "<table id=\"tabela\" class=\"table table-striped table-hover table-bordered\">" +
            "<thead>" +
            "<tr>" +
            "<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOME</th>" +
            "<th>SISTEMA</th>" +
            "<th>EMAIL</th>" +
            "<th>CIDADE</th>" +
             "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }

    private void dadosCorpo()
    {
        string stringSelect = "";

        stringSelect = "select ID_user, nome, sistema, email, cidade from tbl_usuarios order by nome";



    }


    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
    }
}