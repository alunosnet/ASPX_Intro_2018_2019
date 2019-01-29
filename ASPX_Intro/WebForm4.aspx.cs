using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            HttpCookie novo = new HttpCookie("PSIM17");
            novo.Value = Server.UrlEncode(tb1.Text);
            novo.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(novo);
        }
    }
}