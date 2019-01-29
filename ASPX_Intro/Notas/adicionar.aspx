<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="ASPX_Intro.Notas.adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView Width="100%" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlNotas" DefaultMode="Insert">
        <EditItemTemplate>
            id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
            nprocesso:
            <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /><br />
            data_nota:
            <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
            valor:
            <asp:TextBox Text='<%# Bind("valor") %>' runat="server" ID="valorTextBox" /><br />
            disciplina:
            <asp:TextBox Text='<%# Bind("disciplina") %>' runat="server" ID="disciplinaTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            nprocesso:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso" SelectedValue='<%# Bind("nprocesso") %>'></asp:DropDownList>
            data_nota:
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString_BD_M17 %>' SelectCommand="SELECT [nprocesso], [nome] FROM [alunos]"></asp:SqlDataSource>
            <asp:TextBox CssClass="form-control"  Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
            valor:
            <asp:TextBox CssClass="form-control"  Text='<%# Bind("valor") %>' runat="server" ID="valorTextBox" /><br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="A nota não é válida." CssClass="alert" Display="Dynamic" MinimumValue="0" MaximumValue="20" Type="Integer" ControlToValidate="valorTextBox"></asp:RangeValidator>
            disciplina:
            <asp:TextBox CssClass="form-control"  Text='<%# Bind("disciplina") %>' runat="server" ID="disciplinaTextBox" /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Indique qual a disciplina" ControlToValidate="disciplinaTextBox" CssClass="alert" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:LinkButton CssClass="btn btn-info" runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
            nprocesso:
            <asp:Label Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
            data_nota:
            <asp:Label Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
            valor:
            <asp:Label Text='<%# Bind("valor") %>' runat="server" ID="valorLabel" /><br />
            disciplina:
            <asp:Label Text='<%# Bind("disciplina") %>' runat="server" ID="disciplinaLabel" /><br />
            <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString_BD_M17 %>' InsertCommand="INSERT INTO notas(nprocesso, data_nota, valor, disciplina) VALUES (@nprocesso, @data_nota, @valor, @disciplina)" SelectCommand="select * from notas">
        <InsertParameters>
            <asp:Parameter Name="nprocesso"></asp:Parameter>
            <asp:Parameter Name="data_nota"></asp:Parameter>
            <asp:Parameter Name="valor"></asp:Parameter>
            <asp:Parameter Name="disciplina"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
