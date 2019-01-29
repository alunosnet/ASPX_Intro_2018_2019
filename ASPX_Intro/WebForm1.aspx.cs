using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //só são executadas quando a página é pedida
            //a primeira fez
            if (!IsPostBack)
            {
                TextBox1.Text = "0";
                TextBox2.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x, y;

            x = int.Parse(TextBox1.Text);
            y = int.Parse(TextBox2.Text);

            lbResultado.Text = (x + y).ToString();
            Response.Write("Olá mundo");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string url = "webform2.aspx";
            string valor = TextBox1.Text;
            url = url + "?valor=" + Server.UrlEncode(valor);
            Response.Redirect(url);
        }
    }
}