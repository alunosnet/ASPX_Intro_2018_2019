<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPX_Intro.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Primeiro valor:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Segundo valor:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button runat="server" ID="Button1" Text="Somar" OnClick="Button1_Click" />
            <asp:Label ID="lbResultado" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Página 2" PostBackUrl="~/WebForm2.aspx" />
            <a href="WebForm2.aspx">Páginas dois</a>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Página 2" />
        </div>
    </form>
</body>
</html>
