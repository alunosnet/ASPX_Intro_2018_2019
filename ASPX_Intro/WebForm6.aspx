<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="ASPX_Intro.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>
            Email:<asp:TextBox CssClass="form-control" runat="server" ID="tbEmail" TextMode="Email" /><br />
            <!--Isto é um comentário-->
            Password:<asp:TextBox runat="server" ID="tbPassword" TextMode="Password" /><br />
            <asp:Button CssClass="btn btn-info" Text="Login" runat="server" ID="bt1" OnClick="bt1_Click" /><br />
            <% if (Session["perfil"] != null) { %>
                    <a href="logout.aspx">Terminar Sessão</a>
               <% } %>
            <img src="Imagens/Dont-talk-about-it.jpg" class="img-fluid"/>
        </div>
    </form>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
