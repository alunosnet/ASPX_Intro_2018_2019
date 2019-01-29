<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="ASPX_Intro.Alunos.adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlAlunos" DefaultMode="Insert">
        <EditItemTemplate>
            nprocesso:
            <asp:Label ID="nprocessoLabel1" runat="server" Text='<%# Eval("nprocesso") %>' />
            <br />
            nome:
            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            data_nascimento:
            <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            nome:
            <asp:TextBox MaxLength="50" ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            data_nascimento:
            <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            nprocesso:
            <asp:Label ID="nprocessoLabel" runat="server" Text='<%# Eval("nprocesso") %>' />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            data_nascimento:
            <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Bind("data_nascimento") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString_BD_M17 %>' InsertCommand="INSERT INTO alunos(nome, data_nascimento, email) VALUES (@nome, @data_nascimento, @email); SET @novo=SCOPE_IDENTITY();" SelectCommand="SELECT alunos.* FROM alunos" OnInserted="SqlAlunos_Inserted">
        <InsertParameters>
            <asp:Parameter Name="nome"></asp:Parameter>
            <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="email"></asp:Parameter>
            <asp:Parameter DbType="Int32" Direction="Output" Name="novo" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
