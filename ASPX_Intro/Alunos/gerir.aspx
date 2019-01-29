<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="ASPX_Intro.Alunos.gerir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlAlunos" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" ReadOnly="True" InsertVisible="False" SortExpression="nprocesso"></asp:BoundField>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
            <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento" DataFormatString="{0:dd-MM-yyyy}"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:ImageField DataImageUrlField="nprocesso" DataImageUrlFormatString="~/Imagens/{0}.jpg">
                <ControlStyle Width="100px"></ControlStyle>
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="nprocesso" DataNavigateUrlFormatString="notas.aspx?nprocesso={0}" Text="Notas"></asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString_BD_M17 %>' DeleteCommand="DELETE FROM alunos WHERE (nprocesso = @nprocesso)" SelectCommand="select * from alunos" UpdateCommand="UPDATE alunos SET nome = @nome, data_nascimento = @data_nascimento, email = @email WHERE (nprocesso = @nprocesso)">
        <DeleteParameters>
            <asp:Parameter Name="nprocesso"></asp:Parameter>
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome"></asp:Parameter>
            <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="email"></asp:Parameter>
            <asp:Parameter Name="nprocesso"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
