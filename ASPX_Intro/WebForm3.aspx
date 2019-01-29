<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="ASPX_Intro.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><asp:Button runat="server" 
                Text="Enviar" ID="Bt1" OnClick="Bt1_Click" />

            <% Response.Write(DateTime.Now); %>
            <br /><% =x %>
        </div>
    </form>
</body>
</html>
