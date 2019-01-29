using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            string email = tbEmail.Text;
            string password = tbPassword.Text;
            if(email=="joaquim@gmail.com" &&
                password == "12345")
            {
                Session["login"] = true;
                Session["perfil"] = "0";
                Session["email"] = email;
                Response.Redirect("webform7.aspx");
            }
            Response.Write("<script>alert('Login falhou.')</script>");
        }
    }
}