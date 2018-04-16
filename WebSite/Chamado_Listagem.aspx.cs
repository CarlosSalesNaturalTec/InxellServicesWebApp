using System;
using System.Text;


public partial class Chamado_Listagem : System.Web.UI.Page
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
            "<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATA</th>" +
            "<th>STATUS</th>" +
            "<th>DESCRIÇÃO</th>" +
             "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }


    private void dadosCorpo()
    {
        string stringSelect = "";

        stringSelect = "select ID_chamado, data_chamado, staatus , descricao from tbl_chamados order by data_chamado";



    }

    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
    }

}