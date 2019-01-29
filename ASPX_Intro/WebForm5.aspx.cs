using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["PSIM17"];
            if (cookie == null)
            {
                Response.Write("Não tem cookies");
            }
            else
            {
                Response.Write(Server.UrlDecode(cookie.Value));
            }
        }
    }
}