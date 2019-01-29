<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="ASPX_Intro.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <% if (Session["perfil"] != null) { %>
                    <a href="logout.aspx">Terminar Sessão</a>
               <% } %>
            <br />
            <% Response.Write(Session["email"].ToString());%>
            <br />

        </div>
    </form>
</body>
</html>
