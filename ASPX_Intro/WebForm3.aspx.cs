using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public int x = 5;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bt1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //testar tipo de ficheiro
                //imagens jpeg ou png
                if(FileUpload1.PostedFile.ContentType!="image/jpeg"
                    && FileUpload1.PostedFile.ContentType != "image/png")
                {
                    Response.Write("<script>alert('O tipo de ficheiro não é suportado.')</script>");
                    return;
                }
                if(FileUpload1.PostedFile.ContentLength>0 &&
                    FileUpload1.PostedFile.ContentLength < 5000000)
                {
                    string ficheiro = Server.MapPath(@"~\Imagens\");
                    ficheiro += FileUpload1.FileName;
                    FileUpload1.SaveAs(ficheiro);
                }else
                {
                    Response.Write("<script>alert('O tamanho do ficheiro não é válido.')</script>");
                }
            }
        }
    }
}