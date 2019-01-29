using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dados = "IP: " + Request.UserHostAddress + "\n" +
                "Tipo de pedido: " + Request.RequestType + "\n" +
                "Nome: " + Request.UserHostName + "\n" +
                "Método http: " + Request.HttpMethod;

            divDados.InnerText = dados;

            //ler o parâmetro QueryString
            if (Request.QueryString["valor"] != null)
            {
                int x=int.Parse(Request.QueryString["valor"].ToString());
                divValor.InnerHtml = x.ToString();
            }
        }
    }
}