using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_Intro.Alunos
{
    public partial class adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlAlunos_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            //TODO:copiar o ficheiro
            string nprocesso = e.Command.Parameters["@novo"].Value.ToString();
            FileUpload ficheiro = FormView1.FindControl("FileUpload1") as FileUpload;
         //   TextBox tbnome = FormView1.FindControl("nomeTextBox") as TextBox;
         //   tbnome.Text
            if (ficheiro.HasFile)
            {
                if(ficheiro.PostedFile.ContentLength>0 &&
                    (ficheiro.PostedFile.ContentType=="image/jpeg" ||
                    ficheiro.PostedFile.ContentType == "image/png"))
                {
                    ficheiro.SaveAs(Server.MapPath("~/Imagens/") + nprocesso + ".jpg");
                }
            }
        }
    }
}