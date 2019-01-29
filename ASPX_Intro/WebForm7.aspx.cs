using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //testar se iniciou sessão
            if (Session["perfil"] == null)
                Response.Redirect("webform6.aspx");
            if (Session["perfil"].Equals("0") == false)
                Response.Redirect("webform6.aspx");
            //testar html encode
            string html = "<script>alert('olá')</script>";
            Response.Write(Server.HtmlEncode(html));
        }
    }
}