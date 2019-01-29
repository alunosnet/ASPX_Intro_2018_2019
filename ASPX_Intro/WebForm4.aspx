<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="ASPX_Intro.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Valor:<asp:TextBox runat="server" ID="tb1" />
            <asp:Button runat="server" 
                ID="bt1" Text="Enviar" OnClick="bt1_Click"/>
        </div>
    </form>
</body>
</html>
