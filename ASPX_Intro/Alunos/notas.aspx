<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="notas.aspx.cs" Inherits="ASPX_Intro.Alunos.notas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlNotas">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" SortExpression="nprocesso"></asp:BoundField>
            <asp:BoundField DataField="data_nota" HeaderText="data_nota" SortExpression="data_nota"></asp:BoundField>
            <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor"></asp:BoundField>
            <asp:BoundField DataField="disciplina" HeaderText="disciplina" SortExpression="disciplina"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString_BD_M17 %>' SelectCommand="SELECT * FROM [notas] WHERE ([nprocesso] = @nprocesso)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nprocesso" Name="nprocesso" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
